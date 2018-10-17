package IPMS::Loader::Role::HasIPMSSchema;

# ABSTRACT: Provides the WebApp schema to Moose objects

use IPMS::Loader::Moose::Role;

use IPMS::Loader::Config::IPMS ();
use IPMS::Loader::Schema::IPMS ();

sub _schema;
has _schema => (
    is      => 'ro',
    isa     => 'IPMS::Loader::Schema::IPMS',
    lazy    => 1,
    builder => '_build_schema',
    clearer => '_clear_schema',
);

sub _dbh;
has _dbh => (
    is      => 'ro',
    isa     => 'DBI::db',
    lazy    => 1,
    builder => '_build_dbh',
    clearer => '_clear_dbh',
);

sub _build_schema ( $self, @ ) {
    return IPMS::Loader::Schema::IPMS->connect(
        IPMS::Loader::Config::IPMS->instance->connect_info );
}

sub _build_dbh ( $self, @ ) {
    return $self->_schema->storage->dbh;
}

## no critic (Subroutines::ProhibitUnusedPrivateSubroutines)
sub _reset_schema( $self ) {
    $self->_clear_dbh;
    $self->_clear_schema;
}

# TODO: protect the constraint names!
## no critic (Subroutines::ProhibitUnusedPrivateSubroutines)
sub _defer_constraints ( $self, @constraints ) {
    ## use critic
    push @constraints, qw(ALL) if !@constraints;
    my $constraint_string = join ', ', @constraints;
    $self->_dbh->do("SET CONSTRAINTS $constraint_string DEFERRED");
}

# TODO: protect the constraint names!
## no critic (Subroutines::ProhibitUnusedPrivateSubroutines)
sub _restore_constraints ( $self, @constraints ) {
    ## use critic
    push @constraints, qw(ALL) if !@constraints;
    my $constraint_string = join ', ', @constraints;
    $self->_dbh->do("SET CONSTRAINTS $constraint_string IMMEDIATE");
}

1;
