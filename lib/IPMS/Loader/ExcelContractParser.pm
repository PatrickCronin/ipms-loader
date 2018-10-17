package IPMS::Loader::ExcelContractParser;

use IPMS::Loader::Moose;

use Const::Fast 'const';
use IPMS::Loader::Model::Contract ();
use Spreadsheet::Read 'ReadData';

has workbook => (
    is            => 'ro',
    isa           => File,
    required      => 1,
    documentation => 'Excel spreadsheet containing contract data to load',
);

has _workbook => (
    is      => 'ro',
    isa     => 'Spreadsheet::Read',
    lazy    => 1,
    builder => '_build_workbook',
);

const my $PARSER_PREFIX => 'IPMS::Loader::ExcelContractParser::';
const my %ENTITY        => (
    base_contract => {
        parser_class => $PARSER_PREFIX . 'BaseContractData',
        sheet_name   => 'Contracts',
    },
    budget => {
        parser_class => $PARSER_PREFIX . 'BudgetData',
        sheet_name   => 'Budgets',
    },
    company => {
        parser_class => $PARSER_PREFIX . 'CompanyData',
        sheet_name   => 'Companies',
    },
    procurement => {
        parser_class => $PARSER_PREFIX . 'ProcurementData',
        sheet_name   => 'Procurements',
    },
    payment => {
        parser_class => $PARSER_PREFIX . 'PaymentData',
        sheet_name   => 'Payments',
    },
);

foreach my $parser ( keys %PARSERS ) {
    has "_{$parser}_parser" => (
        is      => 'ro',
        isa     => $PARSERS{$parser},
        lazy    => 1,
        default => sub { "$PARSERS{$parser}"->new },
    );
}

sub _build_workbook ( $self, @ ) {
    ReadData( $self->workbook );
}

sub load ($self) {
    $data = $self->_load_all_data;
    $self->_validate_data($data);
    return $self->_models_for_data($data);
}

sub _load_all_data ($self) {
    %loaded_data;

    foreach my $entity ( keys %ENTITY ) {
        my $parser = $ENTITY{$entity}{parser_class}->new(
            sheet => $self->_sheet_by_name( $ENTITY{$entity}{sheet_name} ),
        );

        %loaded_data{$entity} = $parser->validated_data;
    }

    return \%loaded_data;
}

sub _sheet_by_name ( $self, $name ) {
    die "Could not find a sheet named $name!"
        if !$self->_workbook->{sheet}{$name}

        return $self->_workbook->sheet($name);
}

sub _validate_data ( $self, $data ) {
    $self->_validate_id_data($data);
}

sub _validate_id_data ( $self, $data ) {

    # Ensure base contract ids are unique
    my %contract_id;
    $contract_id{ $_->{ Contract ID } }++ for $data->{base_contract}->@*;

    my @non_unique_contract_ids
        = grep { $contact_id{$_} > 1 } keys %contract_id;
    die 'The following contract ids are used more than once: '
        . join( q{ }, @non_unique_contract_ids )
        if @non_unique_contract_ids;

    # Ensure non-base entity contract ids exist in base data
    foreach my $entity ( keys %ENTITY ) {
        next if $entity eq 'base_contract';

        my %entity_contract_id;
        $entity_contract_id{ $_->{ Contract ID } }++ for $data->{$entity}->@*;

        my @not_found_contract_ids
            = grep { !exists $contract_id{$_} } keys %entity_contract_id;
        die
            "The following contract ids are used in the $entity sheet but do not exist in the base contract sheet: "
            . join( q{, }, @not_found_contract_ids )
            if @not_found_contract_ids;
    }
}

sub _models_for_data ( $self, $data ) {
    my @models;

    return \@models;
}

__PACKAGE__->meta->make_immutable;

1;
