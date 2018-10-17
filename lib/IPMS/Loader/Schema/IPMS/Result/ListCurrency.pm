#<<<
use utf8;
package IPMS::Loader::Schema::IPMS::Result::ListCurrency;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

IPMS::Loader::Schema::IPMS::Result::ListCurrency

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

=head1 TABLE: C<list_currency>

=cut

__PACKAGE__->table("list_currency");

=head1 ACCESSORS

=head2 list_currrency_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 list_currency_name

  data_type: 'nvarchar'
  is_nullable: 0
  size: 50

=head2 list_currency_symbol

  data_type: 'nvarchar'
  is_nullable: 0
  size: 5

=cut

__PACKAGE__->add_columns(
  "list_currrency_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "list_currency_name",
  { data_type => "nvarchar", is_nullable => 0, size => 50 },
  "list_currency_symbol",
  { data_type => "nvarchar", is_nullable => 0, size => 5 },
);

=head1 PRIMARY KEY

=over 4

=item * L</list_currrency_id>

=back

=cut

__PACKAGE__->set_primary_key("list_currrency_id");
#>>>

# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-10-17 14:27:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:En6EfyywpJXly16Otui4Xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
