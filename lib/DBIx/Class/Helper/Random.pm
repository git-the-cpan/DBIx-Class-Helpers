package DBIx::Class::Helper::Random;
our $VERSION = '1.093500';

use strict;
use warnings;

use Carp 'croak';

# ABSTRACT: Get random rows from a ResultSet

sub rand {
   my $self   = shift;
   my $amount = shift || 1;

   if ($amount == 1) {
      return $self->slice( int rand $self->count );
   } else {
      croak 'rand is not yet implemented for multiple random values';
   }
}

1;


__END__
=pod

=head1 NAME

DBIx::Class::Helper::Random - Get random rows from a ResultSet

=head1 VERSION

version 1.093500

=head1 SYNOPSIS

 # note that this is normally a component for a ResultSet
 package MySchema::ResultSet::Bar;

 use strict;
 use warnings;

 use parent 'DBIx::Class::ResultSet';

 __PACKAGE__->load_components('Helper::Random');

 # in code using resultset:
 my $random_row  = $schema->resultset('Bar')->rand->single;

=head1 DESCRIPTION

This component allows convenient selection of random rows.

=head1 METHODS

=head2 rand

Currently this method will return a ResultSet containing a single random row
from the given ResultSet.  In the future it will take an argument of how many
random rows should be included in the ResultSet.

=head1 AUTHOR

  Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

