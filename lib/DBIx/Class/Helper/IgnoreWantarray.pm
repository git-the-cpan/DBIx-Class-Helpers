package DBIx::Class::Helper::IgnoreWantarray;
our $VERSION = '1.093500';

use strict;
use warnings;

# ABSTRACT: Get rid of search context issues

sub search {
   shift->search_rs(@_);
}

1;


__END__
=pod

=head1 NAME

DBIx::Class::Helper::IgnoreWantarray - Get rid of search context issues

=head1 VERSION

version 1.093500

=head1 SYNOPSIS

 package MyApp::Schema::ResultSet::Foo;

 __PACKAGE__->load_components(qw{Helper::IgnoreWantarray});

 ...

 1;

And then else where, like in a controller:

 my $rs = $self->paginate(
   $schema->resultset('Foo')->search({
      name => 'frew'
   })
 );

=head1 DESCRIPTION

This component makes search always return a ResultSet, instead of
returning an array of your database in array context.

=head1 METHODS

=head2 search

Override of the default search method to force it to return a ResultSet.

=head2 NOTE

You probably want this applied to your entire schema.  The most convenient
way to do that is to make a base ResultSet and inherit from that in all of
your custom ResultSets as well has make it the default ResultSet for the
non-custom ResultSets.  Example:

 package My::App::Schema::ResultSet;

 use strict;
 use warnings;

 use base 'DBIx::Class::ResultSet';

 __PACKAGE__->load_components('Helper::IgnoreWantarray');

 1;

 package My::App::Schema;

 use base 'DBIx::Class::Schema';

 My::App::Schema->load_namespaces(
    default_resultset_class => 'ResultSet',
 );

 1;

=head1 AUTHOR

  Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

