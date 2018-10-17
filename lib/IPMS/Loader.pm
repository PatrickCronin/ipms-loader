package IPMS::Loader;

use IPMS::Loader::Moose;

use IPMS::Loader::Types qw(Dir);

with 'MooseX::Getopt::Dashes';

has load_dir => (
    is            => 'ro',
    isa           => Dir,
    required      => 1,
    documentation => 'Directory containing Excel Spreadsheets to load',
);

has _contract_source => (
    is      => 'ro',
    isa     => 'IPMS::Loader::ExcelContractParser',
    lazy    => 1,
    builder => '_build_contract_parser',
);

sub _build_contract_parser ( $self, @ ) {
    return IPMS::Loader::ExcelContractParser->new(
        workbook => $self->load_dir->child('Contracts.xlsx') );
}

sub run ($self) {
    my @contracts = $self->_contract_source->load;

    foreach my $contract (@contracts) {
        $contract->save;
    }
}

__PACKAGE__->meta->make_immutable;

1;
