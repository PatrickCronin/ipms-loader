#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::ContractCompany;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::ContractCompany

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

=head1 TABLE: C<contract_company>

=cut

__PACKAGE__->table("contract_company");

=head1 ACCESSORS

=head2 contract_company_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 contract_company_co_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 contract_co_contract_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 contract_company_percent

  data_type: 'real'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "contract_company_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "contract_company_co_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "contract_co_contract_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "contract_company_percent",
  { data_type => "real", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contract_company_id>

=back

=cut

__PACKAGE__->set_primary_key("contract_company_id");

=head1 RELATIONS

=head2 contract_co_contract

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->belongs_to(
  "contract_co_contract",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { contract_id => "contract_co_contract_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 contract_company_co

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Company>

=cut

__PACKAGE__->belongs_to(
  "contract_company_co",
  "IPMS::Loader::Schema::IPMS::Result::Company",
  { company_id => "contract_company_co_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:29:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WiKQgWU+wvIbtlZV61g71w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
