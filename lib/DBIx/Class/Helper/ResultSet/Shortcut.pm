package DBIx::Class::Helper::ResultSet::Shortcut;
{
  $DBIx::Class::Helper::ResultSet::Shortcut::VERSION = '2.016006';
}

# ABSTRACT: Shortcuts to common searches (->order_by, etc)

use strict;
use warnings;

use base 'Class::C3::Componentised';

__PACKAGE__->load_components(qw(
   HRI
   OrderBy
   GroupBy
   Distinct
   Rows
   Columns
   AddColumns
));

sub component_base_class { 'DBIx::Class::Helper::ResultSet::Shortcut' }

1;

__END__

=pod

=head1 NAME

DBIx::Class::Helper::ResultSet::Shortcut - Shortcuts to common searches (->order_by, etc)

=head1 VERSION

version 2.016006

=head1 SYNOPSIS

 package MyApp::Schema::ResultSet::Foo;

 __PACKAGE__->load_components(qw{Helper::ResultSet::Shortcut});

 ...

 1;

And then elsewhere:

 # let's say you grab a resultset from somewhere else
 my $foo_rs = get_common_rs()
 # but I'd like it sorted!
   ->order_by({ -desc => 'power_level' })
 # and without those other dumb columns
   ->columns([qw/cromulence_ratio has_jimmies_rustled/])
 # but get rid of those duplicates
   ->distinct
 # and put those straight into hashrefs, please
   ->hri
 # but only give me the first 3
   ->rows(3);

=head1 DESCRIPTION

This helper provides convenience methods for resultset modifications.

See L<DBIx::Class::Helper::ResultSet/NOTE> for a nice way to apply it to your
entire schema.

=head1 METHODS

=head2 distinct

 $foo_rs->distinct

 # equivalent to...
 $foo_rs->search(undef, { distinct => 1 });

=head2 group_by

 $foo_rs->group_by([ qw/ some column names /])

 # equivalent to...
 $foo_rs->search(undef, { group_by => [ qw/ some column names /] });

=head2 order_by

 $foo_rs->order_by({ -desc => 'col1' });

 # equivalent to...
 $foo_rs->search(undef, { order_by => { -desc => 'col1' } });

=head2 hri

 $foo_rs->hri;

 # equivalent to...
 $foo_rs->search(undef, {
    result_class => 'DBIx::Class::ResultClass::HashRefInflator'
 });

=head2 rows

 $foo_rs->rows(10);

 # equivalent to...
 $foo_rs->search(undef, { rows => 10 })

=head2 columns

 $foo_rs->columns([qw/ some column names /]);

 # equivalent to...
 $foo_rs->search(undef, { columns => [qw/ some column names /] });

=head2 add_columns

 $foo_rs->add_columns([qw/ some column names /]);

 # equivalent to...
 $foo_rs->search(undef, { '+columns' => [qw/ some column names /] });

=head1 SEE ALSO

This component is actually a number of other components put together.  It will
get more components added to it over time.  If you are worried about all the
extra methods you won't use or something, using the individual shortcuts is
a simple solution.  All the documentation will remain here, but the individual
components are:

=over 2

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::HRI>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::OrderBy>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::GroupBy>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::Distinct>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::Rows>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::Columns>

=item * L<DBIx::Class::Helper::ResultSet::Shortcut::AddColumns>

=back

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
