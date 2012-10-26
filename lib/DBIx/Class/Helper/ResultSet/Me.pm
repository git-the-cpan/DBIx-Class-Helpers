package DBIx::Class::Helper::ResultSet::Me;
{
  $DBIx::Class::Helper::ResultSet::Me::VERSION = '2.016000';
}

use strict;
use warnings;

# ABSTRACT: Define predefined searches a more nicely

sub me { shift->current_source_alias . q(.) }

1;

__END__

=pod

=head1 NAME

DBIx::Class::Helper::ResultSet::Me - Define predefined searches a more nicely

=head1 VERSION

version 2.016000

=head1 SYNOPSIS

 # note that this is normally a component for a ResultSet
 package MySchema::ResultSet::Bar;

 use strict;
 use warnings;

 use parent 'DBIx::Class::ResultSet';

 use constant CANDY => 1;

 __PACKAGE__->load_components('Helper::ResultSet::Me');

 sub candy {
    $_[0]->search({ $_[0]->me.'type' => CANDY })
 }

 # in code using resultset:
 my $candy_bars = $schema->resultset('Bar')->candy;

=head1 DESCRIPTION

This component allows slightly nicer predefined search definition.  See
L<DBIx::Class::Helper::ResultSet/NOTE> for a nice way to apply it to your
entire schema.

It defines a single method that is shorter and (to most) clearer than
L<DBIx::Class::ResultSet/current_source_alias>, which is what it uses
for the L</me> method.

=head1 METHODS

=head2 me

Merely returns the SQL namespace for the current search with a C<.> at the end,
allowing internal resultset methods to be defined with C<< $self->me >> instead
of C<< $self->current_source_alias . q(.) >>.

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
