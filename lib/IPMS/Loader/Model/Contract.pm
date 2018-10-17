package IPMS::Loader::Model::Contract;

use IPMS::Loader::Moose;

use IPMS::Loader::Types qw(
    NonEmptySimpleStr
    PositiveInt
);

has friendly_contract_id => (
    is       => 'ro',
    isa      => PositiveInt,
    required => 1,
);

has sub_activity_name => (
    is       => 'ro',
    isa      => NonEmptySimpleStr,
    required => 1,
);

has contract_name => (
    is       => 'ro',
    isa      => NonEmptySimpleStr,
    required => 1,
);

has _contract => (
    is      => 'ro',
    isa     => 'IPMS::Loader::Schema::Result::Contract',
    lazy    => 1,
    builder => '_build_contract',
);

sub _build_contract ( $self, @ ) {
    my @sub_activities = $self->_schema->resultset('SubActivity')->search_rs(
        { sub_activity_name => $self->sub_activity_name },
    );

    die 'No Sub-Activities were found by the name '
        . $self->sub_activity_name
        if !@sub_activities;
    die 'Multiple Sub-Activities were found by the name '
        . $self->sub_activity_name
        if @sub_activities > 1;

    my @contracts = $sub_activities[0]->search_related(
        'contracts',
        { contract_name => $self->contract_name },
    );

    die 'Multiple contracts were found by the name '
        . $self->contract_name
        . ' in the Sub-Activity '
        . $self->sub_activity_name
        if @contracts > 1;

    return $contracts[0] if @contracts;

    return $sub_activities[0]
        ->new_related( { contract_name => $self->contract_name } );
}

has _budget => (
    is      => 'ro',
    isa     => 'IPMS::Loader::Schema::ResultSet',
    lazy    => 1,
    builder => '_build_budget',
);

sub _build_budget ( $self, @ ) {
    return $self->_contract->search_related(
        'contract_budget_contract_budget_cs')
        if $self->_contract->in_storage;

    return $self->_schema->resultset('ContractBudget');
}

# const my %ENTITY => (
#     budgets     => 'ContractBudget',
#     contract    => 'Contract',
#     companies   => 'ContractCompanies',
#     payments    => 'PaymentSchedule',
#     procurement => 'ContractProc',
# );
#
# foreach my $entity ( keys %ENTITY ) {
#     has "_$entity" => (
#         is      => 'ro',
#         isa     => 'IPMS::Loader::Schema::' . $ENTITY{$entity},
#         lazy => 1,
#         default => sub ($self, @) {
#             $self->_schema->resultset($ENTITY{$entity})->new
#         },
#     );
# }

with 'IPMS::Loader::Role::HasIPMSSchema';

__PACKAGE__->meta->make_immutable;

1;
