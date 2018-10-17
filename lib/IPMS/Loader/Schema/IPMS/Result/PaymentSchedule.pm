#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::PaymentSchedule;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::PaymentSchedule

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

=head1 TABLE: C<payment_schedule>

=cut

__PACKAGE__->table("payment_schedule");

=head1 ACCESSORS

=head2 payment_schedule_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 payment_s_contract_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 payment_s_percentage

  data_type: 'double precision'
  is_nullable: 1

=head2 payment_s_days_from

  data_type: 'integer'
  is_nullable: 0

=head2 payment_s_reconciled

  data_type: 'bit'
  is_nullable: 0

=head2 deliverable_d_status_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 deliverable_comment

  data_type: 'ntext'
  is_nullable: 1

=head2 deliverable_name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 255

=head2 deliverable_submitted

  data_type: 'datetime'
  is_nullable: 1

=head2 deliverable_d_rating_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 payment_s_addition_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 payment_s_orig_amount

  data_type: 'money'
  is_nullable: 0

=head2 payment_s_final_amount

  data_type: 'money'
  is_nullable: 1

=head2 payment_actual_date

  data_type: 'datetime'
  is_nullable: 1

=head2 deliverable_d_rating_final

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 deliverable_final_submission

  data_type: 'datetime'
  is_nullable: 1

=head2 deliverable_accepted

  data_type: 'datetime'
  is_nullable: 1

=head2 deliverable_accepted_by

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 payment_s_proj_date

  data_type: 'datetime'
  is_nullable: 1

=head2 payment_s_proj_day

  data_type: 'integer'
  is_nullable: 1

=head2 payment_s_dollar_final

  data_type: 'money'
  is_nullable: 1

=head2 payment_s_invoiced

  data_type: 'money'
  is_nullable: 1

=head2 payment_s_inv_date

  data_type: 'datetime'
  is_nullable: 1

=head2 payment_s_inv_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 20

=head2 payment_s_commit

  data_type: 'money'
  is_nullable: 1

=head2 payment_number

  data_type: 'integer'
  is_nullable: 1

=head2 payment_s_retention

  data_type: 'money'
  is_nullable: 1

=head2 payment_s_proj_amount

  data_type: 'money'
  is_nullable: 1

=head2 payment_s_currency_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 ps_certificate_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 ps_certificate_net_amount

  data_type: 'money'
  is_nullable: 1

=head2 ps_certificate_gross_due

  data_type: 'money'
  is_nullable: 1

=head2 ps_certificate_pay_to_date

  data_type: 'money'
  is_nullable: 1

=head2 ps_certificate_rej_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 ps_certificate_date_submitted

  data_type: 'datetime'
  is_nullable: 1

=head2 ps_certificate_date_approved

  data_type: 'datetime'
  is_nullable: 1

=head2 ps_certificate_amount

  data_type: 'money'
  is_nullable: 1

=head2 ps_certificate_comment

  data_type: 'ntext'
  is_nullable: 1

=head2 ps_certificate_approved_by_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 ps_statement_date

  data_type: 'datetime'
  is_nullable: 1

=head2 ps_statement_amount

  data_type: 'money'
  is_nullable: 1

=head2 ps_advance_amount

  data_type: 'money'
  is_nullable: 1

=head2 ps_claims_amount

  data_type: 'money'
  is_nullable: 1

=head2 ps_ref_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 20

=head2 ps_suffix

  data_type: 'nvarchar'
  is_nullable: 1
  size: 10

=head2 old_rn

  data_type: 'integer'
  is_nullable: 1

=head2 ps_end_date

  data_type: 'datetime'
  is_nullable: 1

=head2 ps_last_one

  data_type: 'bit'
  is_nullable: 0

=head2 ps_bill_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 payment_schedule_perc

  data_type: 'double precision'
  is_nullable: 0

=head2 payment_invoice

  data_type: 'nvarchar'
  is_nullable: 1
  size: 25

=head2 payment_vat

  data_type: 'double precision'
  is_nullable: 0

=head2 payment_perf_start

  data_type: 'datetime'
  is_nullable: 1

=head2 payment_perf_end

  data_type: 'datetime'
  is_nullable: 1

=head2 payment_late

  data_type: 'smallint'
  is_nullable: 1

=head2 payment_schedule_memo

  data_type: 'ntext'
  is_nullable: 1

=head2 payment_schedule_remark

  data_type: 'ntext'
  is_nullable: 1

=head2 actual_payment_date_set_with_authority

  data_type: 'nvarchar'
  is_nullable: 1
  size: 32

=head2 actual_payment_amount_set_with_authority

  data_type: 'nvarchar'
  is_nullable: 1
  size: 32

=head2 actual_payment_amount_final_usd_set_with_authority

  data_type: 'nvarchar'
  is_nullable: 1
  size: 32

=head2 source_db_id_desc

  data_type: 'nvarchar'
  is_nullable: 0
  size: 53

=head2 source_obligation_db_id_desc

  data_type: 'nvarchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "payment_schedule_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "payment_s_contract_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "payment_s_percentage",
  { data_type => "double precision", is_nullable => 1 },
  "payment_s_days_from",
  { data_type => "integer", is_nullable => 0 },
  "payment_s_reconciled",
  { data_type => "bit", is_nullable => 0 },
  "deliverable_d_status_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "deliverable_comment",
  { data_type => "ntext", is_nullable => 1 },
  "deliverable_name",
  { data_type => "nvarchar", is_nullable => 0, size => 255 },
  "deliverable_submitted",
  { data_type => "datetime", is_nullable => 1 },
  "deliverable_d_rating_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "payment_s_addition_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "payment_s_orig_amount",
  { data_type => "money", is_nullable => 0 },
  "payment_s_final_amount",
  { data_type => "money", is_nullable => 1 },
  "payment_actual_date",
  { data_type => "datetime", is_nullable => 1 },
  "deliverable_d_rating_final",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "deliverable_final_submission",
  { data_type => "datetime", is_nullable => 1 },
  "deliverable_accepted",
  { data_type => "datetime", is_nullable => 1 },
  "deliverable_accepted_by",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "payment_s_proj_date",
  { data_type => "datetime", is_nullable => 1 },
  "payment_s_proj_day",
  { data_type => "integer", is_nullable => 1 },
  "payment_s_dollar_final",
  { data_type => "money", is_nullable => 1 },
  "payment_s_invoiced",
  { data_type => "money", is_nullable => 1 },
  "payment_s_inv_date",
  { data_type => "datetime", is_nullable => 1 },
  "payment_s_inv_number",
  { data_type => "nvarchar", is_nullable => 1, size => 20 },
  "payment_s_commit",
  { data_type => "money", is_nullable => 1 },
  "payment_number",
  { data_type => "integer", is_nullable => 1 },
  "payment_s_retention",
  { data_type => "money", is_nullable => 1 },
  "payment_s_proj_amount",
  { data_type => "money", is_nullable => 1 },
  "payment_s_currency_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "ps_certificate_number",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "ps_certificate_net_amount",
  { data_type => "money", is_nullable => 1 },
  "ps_certificate_gross_due",
  { data_type => "money", is_nullable => 1 },
  "ps_certificate_pay_to_date",
  { data_type => "money", is_nullable => 1 },
  "ps_certificate_rej_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "ps_certificate_date_submitted",
  { data_type => "datetime", is_nullable => 1 },
  "ps_certificate_date_approved",
  { data_type => "datetime", is_nullable => 1 },
  "ps_certificate_amount",
  { data_type => "money", is_nullable => 1 },
  "ps_certificate_comment",
  { data_type => "ntext", is_nullable => 1 },
  "ps_certificate_approved_by_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "ps_statement_date",
  { data_type => "datetime", is_nullable => 1 },
  "ps_statement_amount",
  { data_type => "money", is_nullable => 1 },
  "ps_advance_amount",
  { data_type => "money", is_nullable => 1 },
  "ps_claims_amount",
  { data_type => "money", is_nullable => 1 },
  "ps_ref_number",
  { data_type => "nvarchar", is_nullable => 1, size => 20 },
  "ps_suffix",
  { data_type => "nvarchar", is_nullable => 1, size => 10 },
  "old_rn",
  { data_type => "integer", is_nullable => 1 },
  "ps_end_date",
  { data_type => "datetime", is_nullable => 1 },
  "ps_last_one",
  { data_type => "bit", is_nullable => 0 },
  "ps_bill_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "payment_schedule_perc",
  { data_type => "double precision", is_nullable => 0 },
  "payment_invoice",
  { data_type => "nvarchar", is_nullable => 1, size => 25 },
  "payment_vat",
  { data_type => "double precision", is_nullable => 0 },
  "payment_perf_start",
  { data_type => "datetime", is_nullable => 1 },
  "payment_perf_end",
  { data_type => "datetime", is_nullable => 1 },
  "payment_late",
  { data_type => "smallint", is_nullable => 1 },
  "payment_schedule_memo",
  { data_type => "ntext", is_nullable => 1 },
  "payment_schedule_remark",
  { data_type => "ntext", is_nullable => 1 },
  "actual_payment_date_set_with_authority",
  { data_type => "nvarchar", is_nullable => 1, size => 32 },
  "actual_payment_amount_set_with_authority",
  { data_type => "nvarchar", is_nullable => 1, size => 32 },
  "actual_payment_amount_final_usd_set_with_authority",
  { data_type => "nvarchar", is_nullable => 1, size => 32 },
  "source_db_id_desc",
  { data_type => "nvarchar", is_nullable => 0, size => 53 },
  "source_obligation_db_id_desc",
  { data_type => "nvarchar", is_foreign_key => 1, is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</payment_schedule_id>

=back

=cut

__PACKAGE__->set_primary_key("payment_schedule_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<UQ__payment___342B202C355EA205>

=over 4

=item * L</source_db_id_desc>

=back

=cut

__PACKAGE__->add_unique_constraint("UQ__payment___342B202C355EA205", ["source_db_id_desc"]);

=head1 RELATIONS

=head2 payment_s_addition_rn

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::ContractBudget>

=cut

__PACKAGE__->belongs_to(
  "payment_s_addition_rn",
  "IPMS::Loader::Schema::IPMS::Result::ContractBudget",
  { contract_budget_id => "payment_s_addition_rn" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 payment_s_contract

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->belongs_to(
  "payment_s_contract",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { contract_id => "payment_s_contract_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PR80G0b1bvrfI3OB9BpJzQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
