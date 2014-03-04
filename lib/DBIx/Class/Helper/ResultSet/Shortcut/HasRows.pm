package DBIx::Class::Helper::ResultSet::Shortcut::HasRows;
$DBIx::Class::Helper::ResultSet::Shortcut::HasRows::VERSION = '2.020000';
use strict;
use warnings;

use base 'DBIx::Class::Helper::ResultSet::Shortcut::Rows';

sub has_rows { !! shift->rows(1)->next }

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

DBIx::Class::Helper::ResultSet::Shortcut::HasRows

=head1 VERSION

version 2.020000

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
