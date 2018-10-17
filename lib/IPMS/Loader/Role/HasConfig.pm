package IPMS::Loader::Role::HasConfig;

# ABSTRACT: Enable easy access to the config object for Moose objects

use IPMS::Loader::Moose::Role;

use IPMS::Loader::Config ();
use IPMS::Loader::Types qw( HashRef );

has _config => (
    is      => 'ro',
    isa     => 'IPMS::Loader::Config',
    lazy    => 1,
    builder => '_build_config',
);

sub _build_config ( $self, @ ) {
    return IPMS::Loader::Config->instance;
}

1;
