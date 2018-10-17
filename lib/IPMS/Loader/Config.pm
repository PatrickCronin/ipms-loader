package IPMS::Loader::Config;

# ABSTRACT: A system configuration singleton

use IPMS::Loader::Moose;

use Config::INI::Reader ();
use IPMS::Loader::Types qw( HashRef Path );
use List::Util 'first';
use Path::Tiny 'path';

has _dist_root => (
    is      => 'ro',
    isa     => Path,
    lazy    => 1,
    default => sub { path(__FILE__)->parent(4) },
);

has _config_file => (
    is      => 'ro',
    isa     => Path,
    lazy    => 1,
    builder => '_build_config_file',
);

has _config => (
    is      => 'ro',
    isa     => HashRef,
    lazy    => 1,
    builder => '_build_config',
);

has ipms_database_config => (
    is      => 'ro',
    isa     => HashRef,
    lazy    => 1,
    builder => '_build_ipms_database_config',
);

with 'IPMS::Loader::Role::Singleton';

sub _build_config_file ( $self, @ ) {
    my @prioritized_paths = (
        $self->_dist_root->child( 'etc', 'ipms-loader.conf' ),
        Path::Tiny::rootdir->child( 'etc', 'ipms-loader.conf' ),
    );

    my $path = first { $_->exists } @prioritized_paths;
    die "Could not find a configuration file!\n" if !$path;
    return $path;
}

sub _build_config ( $self, @ ) {
    return Config::INI::Reader->read_file( $self->_config_file );
}

sub _build_ipms_database_config ( $self, @ ) {
    my $config = $self->_config->{'IPMS Database'};
    $self->_ensure_all_truthy( 'IPMS DB', $config );
    return $config;
}

sub _ensure_all_truthy ( $self, $type, $config ) {
    for my $key ( keys %$config ) {
        die "Could not find a value for the $type Config key $key!\n"
            if !$config->{$key};
    }
}

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );

1;
