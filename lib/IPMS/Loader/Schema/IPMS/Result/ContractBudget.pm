#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::ContractBudget;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::ContractBudget

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

=head1 TABLE: C<contract_budget>

=cut

__PACKAGE__->table("contract_budget");

=head1 ACCESSORS

=head2 contract_budget_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 contract_budget_c_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 contract_budget_date

  data_type: 'datetime'
  is_nullable: 0

=head2 contract_budget_amount

  data_type: 'money'
  is_nullable: 0

=head2 contract_budget_number

  data_type: 'smallint'
  is_nullable: 0

=head2 contract_budget_description

  data_type: 'ntext'
  is_nullable: 1

=head2 contract_budget_req_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_budget_status

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 source_db_id_desc

  data_type: 'nvarchar'
  is_nullable: 0
  size: 52

=head2 source_obligation_db_id_desc

  data_type: 'nvarchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "contract_budget_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "contract_budget_c_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "contract_budget_date",
  { data_type => "datetime", is_nullable => 0 },
  "contract_budget_amount",
  { data_type => "money", is_nullable => 0 },
  "contract_budget_number",
  { data_type => "smallint", is_nullable => 0 },
  "contract_budget_description",
  { data_type => "ntext", is_nullable => 1 },
  "contract_budget_req_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_budget_status",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "source_db_id_desc",
  { data_type => "nvarchar", is_nullable => 0, size => 52 },
  "source_obligation_db_id_desc",
  { data_type => "nvarchar", is_foreign_key => 1, is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contract_budget_id>

=back

=cut

__PACKAGE__->set_primary_key("contract_budget_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<UQ__contract__342B202C318E1121>

=over 4

=item * L</source_db_id_desc>

=back

=cut

__PACKAGE__->add_unique_constraint("UQ__contract__342B202C318E1121", ["source_db_id_desc"]);

=head1 RELATIONS

=head2 contract_budget_c

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->belongs_to(
  "contract_budget_c",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { contract_id => "contract_budget_c_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 payment_schedules

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::PaymentSchedule>

=cut

__PACKAGE__->has_many(
  "payment_schedules",
  "IPMS::Loader::Schema::IPMS::Result::PaymentSchedule",
  { "foreign.payment_s_addition_rn" => "self.contract_budget_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 source_obligation_db_id_desc

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->belongs_to(
  "source_obligation_db_id_desc",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { source_db_id_desc => "source_obligation_db_id_desc" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:27:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q+2Xqewa7j+uGi/Zm5DTUg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
