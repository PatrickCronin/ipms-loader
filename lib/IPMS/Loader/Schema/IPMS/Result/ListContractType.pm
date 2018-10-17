#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::ListContractType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::ListContractType

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 ADDITIONAL CLASSES USED

=over 4

=item * L<IPMS::Loader::perlbase>

=back

=cut

use IPMS::Loader::perlbase;

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::InflateColumn::Serializer>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components(
  "InflateColumn::DateTime",
  "InflateColumn::Serializer",
  "TimeStamp",
);

=head1 TABLE: C<list_contract_type>

=cut

__PACKAGE__->table("list_contract_type");

=head1 ACCESSORS

=head2 list_contract_type_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 list_contract_type

  data_type: 'nvarchar'
  is_nullable: 0
  size: 50

=head2 list_contract_type_abbrev

  data_type: 'nvarchar'
  is_nullable: 0
  size: 5

=cut

__PACKAGE__->add_columns(
  "list_contract_type_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "list_contract_type",
  { data_type => "nvarchar", is_nullable => 0, size => 50 },
  "list_contract_type_abbrev",
  { data_type => "nvarchar", is_nullable => 0, size => 5 },
);

=head1 PRIMARY KEY

=over 4

=item * L</list_contract_type_id>

=back

=cut

__PACKAGE__->set_primary_key("list_contract_type_id");

=head1 RELATIONS

=head2 contract_procs

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractProc>

=cut

__PACKAGE__->has_many(
  "contract_procs",
  "IPMS::Loader::Schema::IPMS::Result::ContractProc",
  { "foreign.contract_d_type_id" => "self.list_contract_type_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:27:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QKqsPpvvlRskNBhjs3Mqug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
