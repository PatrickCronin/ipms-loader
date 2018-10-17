#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::ContractProc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::ContractProc

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

=head1 TABLE: C<contract_proc>

=cut

__PACKAGE__->table("contract_proc");

=head1 ACCESSORS

=head2 contract_proc_id

  data_type: 'integer'
  is_nullable: 0

=head2 contract_d_p_t_m_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_original_sel_rn

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_d_type_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 contract_d_rfp_number

  data_type: 'nvarchar'
  is_nullable: 1
  size: 50

=head2 contract_d_date_ann_orig

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_ann_est

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_ann_act

  data_type: 'datetime'
  is_nullable: 1

=head2 s0o

  data_type: 'datetime'
  is_nullable: 1

=head2 s0c

  data_type: 'datetime'
  is_nullable: 1

=head2 s0f

  data_type: 'datetime'
  is_nullable: 1

=head2 s1o

  data_type: 'datetime'
  is_nullable: 1

=head2 s1c

  data_type: 'datetime'
  is_nullable: 1

=head2 s1f

  data_type: 'datetime'
  is_nullable: 1

=head2 s2o

  data_type: 'datetime'
  is_nullable: 1

=head2 s2c

  data_type: 'datetime'
  is_nullable: 1

=head2 s2f

  data_type: 'datetime'
  is_nullable: 1

=head2 s3o

  data_type: 'datetime'
  is_nullable: 1

=head2 s3c

  data_type: 'datetime'
  is_nullable: 1

=head2 s3f

  data_type: 'datetime'
  is_nullable: 1

=head2 s4o

  data_type: 'datetime'
  is_nullable: 1

=head2 s4c

  data_type: 'datetime'
  is_nullable: 1

=head2 s4f

  data_type: 'datetime'
  is_nullable: 1

=head2 s5o

  data_type: 'datetime'
  is_nullable: 1

=head2 s5c

  data_type: 'datetime'
  is_nullable: 1

=head2 s5f

  data_type: 'datetime'
  is_nullable: 1

=head2 s6o

  data_type: 'datetime'
  is_nullable: 1

=head2 s6c

  data_type: 'datetime'
  is_nullable: 1

=head2 s6f

  data_type: 'datetime'
  is_nullable: 1

=head2 s7o

  data_type: 'datetime'
  is_nullable: 1

=head2 s7c

  data_type: 'datetime'
  is_nullable: 1

=head2 s7f

  data_type: 'datetime'
  is_nullable: 1

=head2 s8o

  data_type: 'datetime'
  is_nullable: 1

=head2 s8c

  data_type: 'datetime'
  is_nullable: 1

=head2 s8f

  data_type: 'datetime'
  is_nullable: 1

=head2 s10o

  data_type: 'datetime'
  is_nullable: 1

=head2 s10c

  data_type: 'datetime'
  is_nullable: 1

=head2 s10f

  data_type: 'datetime'
  is_nullable: 1

=head2 s11o

  data_type: 'datetime'
  is_nullable: 1

=head2 s11c

  data_type: 'datetime'
  is_nullable: 1

=head2 s11f

  data_type: 'datetime'
  is_nullable: 1

=head2 s12o

  data_type: 'datetime'
  is_nullable: 1

=head2 s12c

  data_type: 'datetime'
  is_nullable: 1

=head2 s12f

  data_type: 'datetime'
  is_nullable: 1

=head2 s13o

  data_type: 'datetime'
  is_nullable: 1

=head2 s13c

  data_type: 'datetime'
  is_nullable: 1

=head2 s13f

  data_type: 'datetime'
  is_nullable: 1

=head2 s14o

  data_type: 'datetime'
  is_nullable: 1

=head2 s14c

  data_type: 'datetime'
  is_nullable: 1

=head2 s14f

  data_type: 'datetime'
  is_nullable: 1

=head2 s15o

  data_type: 'datetime'
  is_nullable: 1

=head2 s15c

  data_type: 'datetime'
  is_nullable: 1

=head2 s15f

  data_type: 'datetime'
  is_nullable: 1

=head2 s16o

  data_type: 'datetime'
  is_nullable: 1

=head2 s16c

  data_type: 'datetime'
  is_nullable: 1

=head2 s16f

  data_type: 'datetime'
  is_nullable: 1

=head2 s17o

  data_type: 'datetime'
  is_nullable: 1

=head2 s17c

  data_type: 'datetime'
  is_nullable: 1

=head2 s17f

  data_type: 'datetime'
  is_nullable: 1

=head2 s18o

  data_type: 'datetime'
  is_nullable: 1

=head2 s18c

  data_type: 'datetime'
  is_nullable: 1

=head2 s18f

  data_type: 'datetime'
  is_nullable: 1

=head2 s19o

  data_type: 'datetime'
  is_nullable: 1

=head2 s19c

  data_type: 'datetime'
  is_nullable: 1

=head2 s19f

  data_type: 'datetime'
  is_nullable: 1

=head2 s20o

  data_type: 'datetime'
  is_nullable: 1

=head2 s20c

  data_type: 'datetime'
  is_nullable: 1

=head2 s20f

  data_type: 'datetime'
  is_nullable: 1

=head2 s21o

  data_type: 'datetime'
  is_nullable: 1

=head2 s21c

  data_type: 'datetime'
  is_nullable: 1

=head2 s21f

  data_type: 'datetime'
  is_nullable: 1

=head2 eoi_prequal

  data_type: 'bit'
  is_nullable: 0

=head2 contract_cpv_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 s0ao

  data_type: 'datetime'
  is_nullable: 1

=head2 s0ac

  data_type: 'datetime'
  is_nullable: 1

=head2 s0af

  data_type: 'datetime'
  is_nullable: 1

=head2 s10ao

  data_type: 'datetime'
  is_nullable: 1

=head2 s10ac

  data_type: 'datetime'
  is_nullable: 1

=head2 s10af

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_eval_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 contract_eval_rate_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_tech_weighting

  data_type: 'double precision'
  is_nullable: 1

=head2 contract_eval_currency

  data_type: 'integer'
  is_nullable: 1

=head2 contract_min_tech_score

  data_type: 'double precision'
  is_nullable: 1

=head2 contract_pre_bid

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_clarification

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_clarification_resp

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_mca_proc_id

  data_type: 'integer'
  is_nullable: 1

=head2 contract_orig_rec_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_orig_sign_date

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_proc_bid_count

  data_type: 'integer'
  is_nullable: 1

=head2 contract_proc_start_wp

  data_type: 'datetime'
  is_nullable: 1

=head2 contract_d_date_ann_wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s0wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s1wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s2wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s3wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s4wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s5wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s6wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s7wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s8wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s9wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s10wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s11wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s12wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s13wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s14wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s15wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s16wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s17wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s18wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s19wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s20wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s21wp

  data_type: 'datetime'
  is_nullable: 1

=head2 s0awp

  data_type: 'datetime'
  is_nullable: 1

=head2 s10awp

  data_type: 'datetime'
  is_nullable: 1

=head2 s2bm

  data_type: 'integer'
  is_nullable: 1

=head2 s3bm

  data_type: 'integer'
  is_nullable: 1

=head2 s4bm

  data_type: 'integer'
  is_nullable: 1

=head2 s5bm

  data_type: 'integer'
  is_nullable: 1

=head2 s6bm

  data_type: 'integer'
  is_nullable: 1

=head2 s0abm

  data_type: 'integer'
  is_nullable: 1

=head2 s7bm

  data_type: 'integer'
  is_nullable: 1

=head2 contract_d_date_ann_bm

  data_type: 'integer'
  is_nullable: 1

=head2 s10bm

  data_type: 'integer'
  is_nullable: 1

=head2 s11bm

  data_type: 'integer'
  is_nullable: 1

=head2 s12bm

  data_type: 'integer'
  is_nullable: 1

=head2 s13bm

  data_type: 'integer'
  is_nullable: 1

=head2 s14bm

  data_type: 'integer'
  is_nullable: 1

=head2 s15bm

  data_type: 'integer'
  is_nullable: 1

=head2 s16bm

  data_type: 'integer'
  is_nullable: 1

=head2 s17bm

  data_type: 'integer'
  is_nullable: 1

=head2 s18bm

  data_type: 'integer'
  is_nullable: 1

=head2 s19bm

  data_type: 'integer'
  is_nullable: 1

=head2 s20bm

  data_type: 'integer'
  is_nullable: 1

=head2 s21bm

  data_type: 'integer'
  is_nullable: 1

=head2 s10abm

  data_type: 'integer'
  is_nullable: 1

=head2 s8bm

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "contract_proc_id",
  { data_type => "integer", is_nullable => 0 },
  "contract_d_p_t_m_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_original_sel_rn",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_d_type_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "contract_d_rfp_number",
  { data_type => "nvarchar", is_nullable => 1, size => 50 },
  "contract_d_date_ann_orig",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_ann_est",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_ann_act",
  { data_type => "datetime", is_nullable => 1 },
  "s0o",
  { data_type => "datetime", is_nullable => 1 },
  "s0c",
  { data_type => "datetime", is_nullable => 1 },
  "s0f",
  { data_type => "datetime", is_nullable => 1 },
  "s1o",
  { data_type => "datetime", is_nullable => 1 },
  "s1c",
  { data_type => "datetime", is_nullable => 1 },
  "s1f",
  { data_type => "datetime", is_nullable => 1 },
  "s2o",
  { data_type => "datetime", is_nullable => 1 },
  "s2c",
  { data_type => "datetime", is_nullable => 1 },
  "s2f",
  { data_type => "datetime", is_nullable => 1 },
  "s3o",
  { data_type => "datetime", is_nullable => 1 },
  "s3c",
  { data_type => "datetime", is_nullable => 1 },
  "s3f",
  { data_type => "datetime", is_nullable => 1 },
  "s4o",
  { data_type => "datetime", is_nullable => 1 },
  "s4c",
  { data_type => "datetime", is_nullable => 1 },
  "s4f",
  { data_type => "datetime", is_nullable => 1 },
  "s5o",
  { data_type => "datetime", is_nullable => 1 },
  "s5c",
  { data_type => "datetime", is_nullable => 1 },
  "s5f",
  { data_type => "datetime", is_nullable => 1 },
  "s6o",
  { data_type => "datetime", is_nullable => 1 },
  "s6c",
  { data_type => "datetime", is_nullable => 1 },
  "s6f",
  { data_type => "datetime", is_nullable => 1 },
  "s7o",
  { data_type => "datetime", is_nullable => 1 },
  "s7c",
  { data_type => "datetime", is_nullable => 1 },
  "s7f",
  { data_type => "datetime", is_nullable => 1 },
  "s8o",
  { data_type => "datetime", is_nullable => 1 },
  "s8c",
  { data_type => "datetime", is_nullable => 1 },
  "s8f",
  { data_type => "datetime", is_nullable => 1 },
  "s10o",
  { data_type => "datetime", is_nullable => 1 },
  "s10c",
  { data_type => "datetime", is_nullable => 1 },
  "s10f",
  { data_type => "datetime", is_nullable => 1 },
  "s11o",
  { data_type => "datetime", is_nullable => 1 },
  "s11c",
  { data_type => "datetime", is_nullable => 1 },
  "s11f",
  { data_type => "datetime", is_nullable => 1 },
  "s12o",
  { data_type => "datetime", is_nullable => 1 },
  "s12c",
  { data_type => "datetime", is_nullable => 1 },
  "s12f",
  { data_type => "datetime", is_nullable => 1 },
  "s13o",
  { data_type => "datetime", is_nullable => 1 },
  "s13c",
  { data_type => "datetime", is_nullable => 1 },
  "s13f",
  { data_type => "datetime", is_nullable => 1 },
  "s14o",
  { data_type => "datetime", is_nullable => 1 },
  "s14c",
  { data_type => "datetime", is_nullable => 1 },
  "s14f",
  { data_type => "datetime", is_nullable => 1 },
  "s15o",
  { data_type => "datetime", is_nullable => 1 },
  "s15c",
  { data_type => "datetime", is_nullable => 1 },
  "s15f",
  { data_type => "datetime", is_nullable => 1 },
  "s16o",
  { data_type => "datetime", is_nullable => 1 },
  "s16c",
  { data_type => "datetime", is_nullable => 1 },
  "s16f",
  { data_type => "datetime", is_nullable => 1 },
  "s17o",
  { data_type => "datetime", is_nullable => 1 },
  "s17c",
  { data_type => "datetime", is_nullable => 1 },
  "s17f",
  { data_type => "datetime", is_nullable => 1 },
  "s18o",
  { data_type => "datetime", is_nullable => 1 },
  "s18c",
  { data_type => "datetime", is_nullable => 1 },
  "s18f",
  { data_type => "datetime", is_nullable => 1 },
  "s19o",
  { data_type => "datetime", is_nullable => 1 },
  "s19c",
  { data_type => "datetime", is_nullable => 1 },
  "s19f",
  { data_type => "datetime", is_nullable => 1 },
  "s20o",
  { data_type => "datetime", is_nullable => 1 },
  "s20c",
  { data_type => "datetime", is_nullable => 1 },
  "s20f",
  { data_type => "datetime", is_nullable => 1 },
  "s21o",
  { data_type => "datetime", is_nullable => 1 },
  "s21c",
  { data_type => "datetime", is_nullable => 1 },
  "s21f",
  { data_type => "datetime", is_nullable => 1 },
  "eoi_prequal",
  { data_type => "bit", is_nullable => 0 },
  "contract_cpv_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "s0ao",
  { data_type => "datetime", is_nullable => 1 },
  "s0ac",
  { data_type => "datetime", is_nullable => 1 },
  "s0af",
  { data_type => "datetime", is_nullable => 1 },
  "s10ao",
  { data_type => "datetime", is_nullable => 1 },
  "s10ac",
  { data_type => "datetime", is_nullable => 1 },
  "s10af",
  { data_type => "datetime", is_nullable => 1 },
  "contract_eval_rate",
  { data_type => "double precision", is_nullable => 1 },
  "contract_eval_rate_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_tech_weighting",
  { data_type => "double precision", is_nullable => 1 },
  "contract_eval_currency",
  { data_type => "integer", is_nullable => 1 },
  "contract_min_tech_score",
  { data_type => "double precision", is_nullable => 1 },
  "contract_pre_bid",
  { data_type => "datetime", is_nullable => 1 },
  "contract_clarification",
  { data_type => "datetime", is_nullable => 1 },
  "contract_clarification_resp",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_mca_proc_id",
  { data_type => "integer", is_nullable => 1 },
  "contract_orig_rec_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_orig_sign_date",
  { data_type => "datetime", is_nullable => 1 },
  "contract_proc_bid_count",
  { data_type => "integer", is_nullable => 1 },
  "contract_proc_start_wp",
  { data_type => "datetime", is_nullable => 1 },
  "contract_d_date_ann_wp",
  { data_type => "datetime", is_nullable => 1 },
  "s0wp",
  { data_type => "datetime", is_nullable => 1 },
  "s1wp",
  { data_type => "datetime", is_nullable => 1 },
  "s2wp",
  { data_type => "datetime", is_nullable => 1 },
  "s3wp",
  { data_type => "datetime", is_nullable => 1 },
  "s4wp",
  { data_type => "datetime", is_nullable => 1 },
  "s5wp",
  { data_type => "datetime", is_nullable => 1 },
  "s6wp",
  { data_type => "datetime", is_nullable => 1 },
  "s7wp",
  { data_type => "datetime", is_nullable => 1 },
  "s8wp",
  { data_type => "datetime", is_nullable => 1 },
  "s9wp",
  { data_type => "datetime", is_nullable => 1 },
  "s10wp",
  { data_type => "datetime", is_nullable => 1 },
  "s11wp",
  { data_type => "datetime", is_nullable => 1 },
  "s12wp",
  { data_type => "datetime", is_nullable => 1 },
  "s13wp",
  { data_type => "datetime", is_nullable => 1 },
  "s14wp",
  { data_type => "datetime", is_nullable => 1 },
  "s15wp",
  { data_type => "datetime", is_nullable => 1 },
  "s16wp",
  { data_type => "datetime", is_nullable => 1 },
  "s17wp",
  { data_type => "datetime", is_nullable => 1 },
  "s18wp",
  { data_type => "datetime", is_nullable => 1 },
  "s19wp",
  { data_type => "datetime", is_nullable => 1 },
  "s20wp",
  { data_type => "datetime", is_nullable => 1 },
  "s21wp",
  { data_type => "datetime", is_nullable => 1 },
  "s0awp",
  { data_type => "datetime", is_nullable => 1 },
  "s10awp",
  { data_type => "datetime", is_nullable => 1 },
  "s2bm",
  { data_type => "integer", is_nullable => 1 },
  "s3bm",
  { data_type => "integer", is_nullable => 1 },
  "s4bm",
  { data_type => "integer", is_nullable => 1 },
  "s5bm",
  { data_type => "integer", is_nullable => 1 },
  "s6bm",
  { data_type => "integer", is_nullable => 1 },
  "s0abm",
  { data_type => "integer", is_nullable => 1 },
  "s7bm",
  { data_type => "integer", is_nullable => 1 },
  "contract_d_date_ann_bm",
  { data_type => "integer", is_nullable => 1 },
  "s10bm",
  { data_type => "integer", is_nullable => 1 },
  "s11bm",
  { data_type => "integer", is_nullable => 1 },
  "s12bm",
  { data_type => "integer", is_nullable => 1 },
  "s13bm",
  { data_type => "integer", is_nullable => 1 },
  "s14bm",
  { data_type => "integer", is_nullable => 1 },
  "s15bm",
  { data_type => "integer", is_nullable => 1 },
  "s16bm",
  { data_type => "integer", is_nullable => 1 },
  "s17bm",
  { data_type => "integer", is_nullable => 1 },
  "s18bm",
  { data_type => "integer", is_nullable => 1 },
  "s19bm",
  { data_type => "integer", is_nullable => 1 },
  "s20bm",
  { data_type => "integer", is_nullable => 1 },
  "s21bm",
  { data_type => "integer", is_nullable => 1 },
  "s10abm",
  { data_type => "integer", is_nullable => 1 },
  "s8bm",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contract_proc_id>

=back

=cut

__PACKAGE__->set_primary_key("contract_proc_id");

=head1 RELATIONS

=head2 contract_d_type

Type: belongs_to

Related object: L<IPMS::Loader::Schema::IPMS::Result::ListContractType>

=cut

__PACKAGE__->belongs_to(
  "contract_d_type",
  "IPMS::Loader::Schema::IPMS::Result::ListContractType",
  { list_contract_type_id => "contract_d_type_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 contracts

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->has_many(
  "contracts",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { "foreign.contract_other_proc_id" => "self.contract_proc_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:27:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Rz/fAoCLRgpooUKebKCBkA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
