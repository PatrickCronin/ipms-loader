package IPMS::Loader::Storage::IPMSSchemaDumper;

use IPMS::Loader::Moose;

use IPMS::Loader::Config::IPMS ();

with 'IPMS::Loader::Role::DumpsDBICSchema';

sub _build_db_config ( $self, @ ) {
    return IPMS::Loader::Config::IPMS->instance;
}

sub _build_loader_options ( $self, @ ) {
    my @tables_and_views = qw(
        contract
        company
        contract_budget
        contract_company
        contract_proc
        list_contract_type
        list_currency
        payment_schedule
    );
    my $tables_and_views_alternation
        = join( '|', map { quotemeta($_) } @tables_and_views );
    my $tables_and_views_re
        = qr/(?:\A|\.)(?:$tables_and_views_alternation)\z/i;

    return {
        constraint => $tables_and_views_re,
        db_schema  => 'dbo',
    };
}

__PACKAGE__->meta->make_immutable;

1;
