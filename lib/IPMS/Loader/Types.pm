package IPMS::Loader::Types;

use IPMS::Loader::perlbase;

use base 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    qw(
        MooseX::Types::Common::Numeric
        MooseX::Types::Common::String
        MooseX::Types::Moose
        MooseX::Types::Path::Tiny
        MooseX::Types::Perl
        MooseX::Types::PortNumber
        )
);

1;
