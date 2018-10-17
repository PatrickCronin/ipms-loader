#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::SubActivity;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::SubActivity

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

=head1 TABLE: C<sub_activity>

=cut

__PACKAGE__->table("sub_activity");

=head1 ACCESSORS

=head2 sub_activity_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 sub_activity_activity_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 sub_activity_name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 150

=head2 sub_activity_start_date

  data_type: 'datetime'
  is_nullable: 1

=head2 sub_activity_end_date

  data_type: 'datetime'
  is_nullable: 1

=head2 sub_activity_mca_manager_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 sub_activity_outline_number

  data_type: 'integer'
  is_nullable: 0

=head2 sub_activity_type_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 sub_activity_budget

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q1

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q2

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q3

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q4

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q1c

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q2c

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q3c

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_target_q4c

  data_type: 'money'
  is_nullable: 0

=head2 sub_activity_bpr_myfp_name

  data_type: 'nvarchar'
  is_nullable: 1
  size: 256

=head2 sub_activity_bpr_myfp_original_budget

  data_type: 'money'
  is_nullable: 1

=head2 sub_activity_bpr_myfp_latest_budget_no_ptr

  data_type: 'money'
  is_nullable: 1

=head2 sub_activity_bpr_current_ptr_funding

  data_type: 'money'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "sub_activity_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "sub_activity_activity_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "sub_activity_name",
  { data_type => "nvarchar", is_nullable => 0, size => 150 },
  "sub_activity_start_date",
  { data_type => "datetime", is_nullable => 1 },
  "sub_activity_end_date",
  { data_type => "datetime", is_nullable => 1 },
  "sub_activity_mca_manager_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "sub_activity_outline_number",
  { data_type => "integer", is_nullable => 0 },
  "sub_activity_type_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "sub_activity_budget",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q1",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q2",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q3",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q4",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q1c",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q2c",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q3c",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_target_q4c",
  { data_type => "money", is_nullable => 0 },
  "sub_activity_bpr_myfp_name",
  { data_type => "nvarchar", is_nullable => 1, size => 256 },
  "sub_activity_bpr_myfp_original_budget",
  { data_type => "money", is_nullable => 1 },
  "sub_activity_bpr_myfp_latest_budget_no_ptr",
  { data_type => "money", is_nullable => 1 },
  "sub_activity_bpr_current_ptr_funding",
  { data_type => "money", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sub_activity_id>

=back

=cut

__PACKAGE__->set_primary_key("sub_activity_id");

=head1 RELATIONS

=head2 contracts

Type: has_many

Related object: L<IPMS::Loader::Schema::IPMS::Result::Contract>

=cut

__PACKAGE__->has_many(
  "contracts",
  "IPMS::Loader::Schema::IPMS::Result::Contract",
  { "foreign.contract_sub_activity_id" => "self.sub_activity_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 15:00:33
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Lrb4gP8CZikyGJ7uE3Z2dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
