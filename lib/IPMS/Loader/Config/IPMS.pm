package IPMS::Loader::Config::IPMS;

use IPMS::Loader::Moose;

use IPMS::Loader::Types qw( HashRef NonEmptySimpleStr PortNumber );

has _db_config => (
    is      => 'ro',
    isa     => HashRef,
    lazy    => 1,
    builder => '_build_db_config',
);

with qw(
    IPMS::Loader::Role::ConfiguresDatabase
    IPMS::Loader::Role::HasConfig
);

sub _build_db_config ( $self, @ ) {
    return $self->_config->ipms_database_config;
}

sub _build_dsn ( $self, @ ) {
    return 'dbi:ODBC:DSN=pronacom_ipms';
}

sub _build_username ( $self, @ ) {
    return $self->_db_config->{username};
}

sub _build_password ( $self, @ ) {
    return $self->_db_config->{password};
}

sub _build_dbi_attributes ( $self, @ ) {
    return {
        AutoCommit  => 1,
        LongTruncOk => 0,
        LongReadLen => 104857600,    # 100MB max field length
        PrintError  => 1,
        PrintWarn   => 1,
        RaiseError  => 1,
        quote_char  => [qw([ ])],
        name_sep    => q{.},
    };
}

sub _build_schema_class_name ( $self, @ ) {
    return 'IPMS::Loader::Schema::IPMS';
}

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );

1;
