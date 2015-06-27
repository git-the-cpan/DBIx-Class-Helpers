package DBIx::Class::Helper::Schema::Verifier;
$DBIx::Class::Helper::Schema::Verifier::VERSION = '2.029000';
# ABSTRACT: Verify the Results and ResultSets of your Schemata

use strict;
use warnings;

use MRO::Compat;
use mro 'c3';

use base 'DBIx::Class::Schema';

sub result_verifiers {
   return ()
}

sub register_source {
   my ($self, $name, $rclass) = @_;

   $self->$_($rclass->result_class, $rclass->resultset_class)
      for $self->result_verifiers;

   $self->next::method($name, $rclass);
}

1;

__END__

=pod

=head1 NAME

DBIx::Class::Helper::Schema::Verifier - Verify the Results and ResultSets of your Schemata

=head1 SYNOPSIS

 package MyApp::Schema;

 __PACKAGE__->load_components('Helper::Schema::Verifier');

 sub result_verifiers {
   (
      sub {
         my ($self, $result, $set) = @_;

         for ($result, $set) {
            die "$_ does not start with the letter A" unless m/^A/
         }
      },
      shift->next::method,
   )
 }

=head1 DESCRIPTION

C<DBIx::Class::Helper::Schema::Verifier> is a miniscule framework to assist in
creating schemata that are to your very own exacting specifications.  It is
inspired by my own travails in discovering that C<< use mro 'c3' >> is both
required and barely documented in much Perl code.  As time goes by I expect to
add many more verifiers, but with this inaugural release I am merely including
L<DBIx::Class::Helper::Schema::Verifier::C3>.

=head1 INTERFACE METHODS

=head2 result_verifiers

You must implement C<result_verifiers> in your subclass of C<::Verifier>.  Each
verifier gets called on the schema and gets each result and resultset together
as arguments.  You can use this to validate almost anything about the results
and resultsets of a schema; contributions are warmly welcomed.

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
