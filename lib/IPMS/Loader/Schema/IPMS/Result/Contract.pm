#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::Contract;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::Contract

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

=head1 TABLE: C<contract>

=cut

__PACKAGE__->table("contract");

=head1 ACCESSORS

=head2 contract_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 contract_sub_activity_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 contract_name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 150

=head2 contract_outline_number

  data_type: 'nvarchar'
  is_nullable: 0
  size: 30

=head2 contract_total_budgetx

  data_type: 'money'
  is_nullable: 0

=head2 contract_outline_number_int

  data_type: 'integer'
  is_nullable: 1

=head2 contract_date_sign_original

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_date_sign_est

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_date_sign_act

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_mca_manager_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_d_company_id

  data_type: 'integer'
  is_nullable: 1

=head2 contract_d_co_contact_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_d_contract_perf

  data_type: 'ntext'
  is_nullable: 1

=head2 contract_d_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_d_pp_comment

  data_type: 'ntext'
  is_nullable: 1

=head2 contract_total_bud_local

  data_type: 'money'
  is_nullable: 0

=head2 contract_currency_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 contract_canceled

  data_type: 'bit'
  is_nullable: 0

=head2 contract_financial_number

  data_type: 'nchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 7

=head2 contract_j_venture_name

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_tl_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_award_notice_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_projected_pay

  data_type: 'integer'
  is_nullable: 0

=head2 contract_commitment_am

  data_type: 'money'
  is_nullable: 1

=head2 contract_aw_pub

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_retention_type_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_retention_length

  data_type: 'integer'
  is_nullable: 1

=head2 contract_retention_comment

  data_type: 'ntext'
  is_nullable: 1

=head2 contract_provisional_sum

  data_type: 'money'
  is_nullable: 1

=head2 contract_engineer_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_midas_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_terminated

  data_type: 'bit'
  is_nullable: 0

=head2 contract_moblized

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_com_orig

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_com_est

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_com_act

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_permit_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_ad_rep_note

  data_type: 'ntext'
  is_nullable: 1

=head2 contract_other_proc_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_import_number

  data_type: 'integer'
  is_nullable: 1

=head2 contract_close_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_drb_1

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_drb_2

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_drb_3

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_grant_category_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_system_id_text

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_system_id_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 10

=head2 contract_procurement

  data_type: 'nvarchar'
  is_nullable: 1
  size: 25

=head2 contract_procurement_mng_rn

  data_type: 'integer'
  is_nullable: 1

=head2 contract_rel_grant_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_last_perf_rep_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_date_sign_wp

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_date_sign_bm

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_com_wp

  data_type: 'datetime'
  is_nullable: 1

=head2 source_db_id_desc

  data_type: 'nvarchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "contract_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "contract_sub_activity_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "contract_name",
  { data_type => "nvarchar", is_nullable => 0, size => 150 },
  "contract_outline_number",
  { data_type => "nvarchar", is_nullable => 0, size => 30 },
  "contract_total_budgetx",
  { data_type => "money", is_nullable => 0 },
  "contract_outline_number_int",
  { data_type => "integer", is_nullable => 1 },
  "contract_date_sign_original",
  { data_type => "datetime", is_nullable => 1 },
  "contract_date_sign_est",
  { data_type => "datetime", is_nullable => 1 },
  "contract_date_sign_act",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_mca_manager_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_d_company_id",
  { data_type => "integer", is_nullable => 1 },
  "contract_d_co_contact_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_d_contract_perf",
  { data_type => "ntext", is_nullable => 1 },
  "contract_d_number",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_d_pp_comment",
  { data_type => "ntext", is_nullable => 1 },
  "contract_total_bud_local",
  { data_type => "money", is_nullable => 0 },
  "contract_currency_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "contract_canceled",
  { data_type => "bit", is_nullable => 0 },
  "contract_financial_number",
  { data_type => "nchar", is_foreign_key => 1, is_nullable => 0, size => 7 },
  "contract_j_venture_name",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_tl_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_award_notice_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_projected_pay",
  { data_type => "integer", is_nullable => 0 },
  "contract_commitment_am",
  { data_type => "money", is_nullable => 1 },
  "contract_aw_pub",
  { data_type => "datetime", is_nullable => 1 },
  "contract_retention_type_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_retention_length",
  { data_type => "integer", is_nullable => 1 },
  "contract_retention_comment",
  { data_type => "ntext", is_nullable => 1 },
  "contract_provisional_sum",
  { data_type => "money", is_nullable => 1 },
  "contract_engineer_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_midas_number",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_terminated",
  { data_type => "bit", is_nullable => 0 },
  "contract_moblized",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_com_orig",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_com_est",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_com_act",
  { data_type => "datetime", is_nullable => 1 },
  "contract_permit_number",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_ad_rep_note",
  { data_type => "ntext", is_nullable => 1 },
  "contract_other_proc_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_import_number",
  { data_type => "integer", is_nullable => 1 },
  "contract_close_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_drb_1",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_drb_2",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_drb_3",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_grant_category_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_system_id_text",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_system_id_number",
  { data_type => "nvarchar", is_nullable => 1, size => 10 },
  "contract_procurement",
  { data_type => "nvarchar", is_nullable => 1, size => 25 },
  "contract_procurement_mng_rn",
  { data_type => "integer", is_nullable => 1 },
  "contract_rel_grant_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_last_perf_rep_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_date_sign_wp",
  { data_type => "datetime", is_nullable => 1 },
  "contract_date_sign_bm",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_com_wp",
  { data_type => "datetime", is_nullable => 1 },
  "source_db_id_desc",
  { data_type => "nvarchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contract_id>

=back

=cut

__PACKAGE__->set_primary_key("contract_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<UQ__contract__342B202C2EB1A476>

=over 4

=item * L</source_db_id_desc>

=back

=cut

__PACKAGE__->add_unique_constraint("UQ__contract__342B202C2EB1A476", ["source_db_id_desc"]);

=head1 RELATIONS

=head2 contract_budget_contract_budget_cs

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractBudget>

=cut

__PACKAGE__->has_many(
  "contract_budget_contract_budget_cs",
  "IPMS::Loader::Schema::IPMS::Result::ContractBudget",
  { "foreign.contract_budget_c_id" => "self.contract_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contract_budget_source_obligation_db_id_descs

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractBudget>

=cut

__PACKAGE__->has_many(
  "contract_budget_source_obligation_db_id_descs",
  "IPMS::Loader::Schema::IPMS::Result::ContractBudget",
  {
    "foreign.source_obligation_db_id_desc" => "self.source_db_id_desc",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contract_companies

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractCompany>

=cut

__PACKAGE__->has_many(
  "contract_companies",
  "IPMS::Loader::Schema::IPMS::Result::ContractCompany",
  { "foreign.contract_co_contract_id" => "self.contract_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contract_engineer_rn

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Company>

=cut

__PACKAGE__->belongs_to(
  "contract_engineer_rn",
  "IPMS::Loader::Schema::IPMS::Result::Company",
  { company_id => "contract_engineer_rn" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 contract_other_proc

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractProc>

=cut

__PACKAGE__->belongs_to(
  "contract_other_proc",
  "IPMS::Loader::Schema::IPMS::Result::ContractProc",
  { contract_proc_id => "contract_other_proc_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 contract_sub_activity

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::SubActivity>

=cut

__PACKAGE__->belongs_to(
  "contract_sub_activity",
  "IPMS::Loader::Schema::IPMS::Result::SubActivity",
  { sub_activity_id => "contract_sub_activity_id" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 payment_schedule_payment_s_contracts

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::PaymentSchedule>

=cut

__PACKAGE__->has_many(
  "payment_schedule_payment_s_contracts",
  "IPMS::Loader::Schema::IPMS::Result::PaymentSchedule",
  { "foreign.payment_s_contract_id" => "self.contract_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 payment_schedule_source_obligation_db_id_descs

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::PaymentSchedule>

=cut

__PACKAGE__->has_many(
  "payment_schedule_source_obligation_db_id_descs",
  "IPMS::Loader::Schema::IPMS::Result::PaymentSchedule",
  {
    "foreign.source_obligation_db_id_desc" => "self.source_db_id_desc",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 15:00:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cg9utIZjEzVKyMCkN/DnEw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
