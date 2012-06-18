package DBIx::Class::Helper::Row::SelfResultSet;
{
  $DBIx::Class::Helper::Row::SelfResultSet::VERSION = '2.013002';
}

use strict;
use warnings;

# ABSTRACT: Easily use ResultSet methods for the current row

sub self_rs {
   my ($self) = @_;

   my $src = $self->result_source;
   return $src->resultset->search({
      map { $_ => $self->get_column($_) } $src->primary_columns
   })
}

1;


__END__
=pod

=head1 NAME

DBIx::Class::Helper::Row::SelfResultSet - Easily use ResultSet methods for the current row

=head1 VERSION

version 2.013002

=head1 SYNOPSIS

In result class:

 __PACKAGE__->load_components('Helper::Row::SelfResultSet');

Elsewhere:

 $row->self_rs->$some_rs_method->single

=head1 DESCRIPTION

Sometimes you need to be able to access a ResultSet containing just the current
row.  A good reason to do that would be if you had a ResultSet method that adds
in some calculated data, like counts of a relationship.  You could use this to
get at that counted data without duplicating the logic for the counting.

=head1 METHODS

=head2 self_rs

 $row->self_rs

returns a ResultSet containing B<just> the current row.

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

