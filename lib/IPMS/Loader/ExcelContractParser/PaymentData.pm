package IPMS::Loader::ExcelContractParser::PaymentData;

use IPMS::Loader::Moose;

use List::Util 'any';

with 'IPMS::Loader::Role::ParsesExcelSheet';

sub validated_data ($self) {
    my $required_header = 'Contract ID';
    die "Sheet must have a $required_header header"
        if !any { $_ eq $required_header } $self->_headers->@*;

    return $self->_data;
}

__PACKAGE__->meta->make_immutable;

1;
