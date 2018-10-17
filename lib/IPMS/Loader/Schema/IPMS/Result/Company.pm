#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::Company;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::Company

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

=head1 TABLE: C<company>

=cut

__PACKAGE__->table("company");

=head1 ACCESSORS

=head2 company_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 company_name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 50

=head2 company_country_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "company_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "company_name",
  { data_type => "nvarchar", is_nullable => 0, size => 50 },
  "company_country_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</company_id>

=back

=cut

__PACKAGE__->set_primary_key("company_id");

=head1 RELATIONS

=head2 contract_companies

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractCompany>

=cut

__PACKAGE__->has_many(
  "contract_companies",
  "IPMS::Loader::Schema::IPMS::Result::ContractCompany",
  { "foreign.contract_company_co_id" => "self.company_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contracts

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->has_many(
  "contracts",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { "foreign.contract_engineer_rn" => "self.company_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:29:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:f5HDRpAAQvtTQAaYVCQnXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
