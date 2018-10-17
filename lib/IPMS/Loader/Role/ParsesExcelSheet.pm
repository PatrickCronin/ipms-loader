package IPMS::Loader::Role::ParsesExcelSheet;

use IPMS::Loader::Moose::Role;

use IPMS::Loader::Types 'ArrayRef';
use List::MoreUtils 'zip';

# Require consumers to define a public validation sub, even if it does
# nothing.
requires 'validated_data';

has sheet => (
    is            => 'ro',
    isa           => 'Spreadsheet::Read::Sheet',
    required      => 1,
    documentation => 'The worksheet to parse',
);

has _headers => (
    is      => 'ro',
    isa     => ArrayRef,
    lazy    => 1,
    builder => '_build_fields',
);

has _data => (
    is      => 'ro',
    isa     => ArrayRef,
    lazy    => 1,
    builder => '_build_data',
);

sub _build_fields ( $self, @ ) {
    return [ $self->sheet->row(1) ];
}

sub _build_data ($self) {
    my @data;

    # Sanity check: a header for each column
    die 'Maxcol is not equal to number of headers'
        if $self->_headers->@* < $sheet->maxcol;

    foreach my $row_num ( 2 .. $sheet->maxrow ) {
        my @values = $sheet->row($row_num);

        # Sanity check: no more fields than headers
        die sprintf(
            'Row %d of sheet %s has more fields than there are headers',
            $row_num,
            $sheet->label
        ) if @values > $self->_headers->@*;

        push @data, { zip $self->_headers->@*, @values };
    }

    return \@data;
}

1;
