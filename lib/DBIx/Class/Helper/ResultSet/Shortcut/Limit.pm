package DBIx::Class::Helper::ResultSet::Shortcut::Limit;
$DBIx::Class::Helper::ResultSet::Shortcut::Limit::VERSION = '2.023006';
use strict;
use warnings;

use base 'DBIx::Class::Helper::ResultSet::Shortcut::Rows';

sub limit { return shift->rows(@_) }

1;

__END__

=pod

=head1 NAME

DBIx::Class::Helper::ResultSet::Shortcut::Limit

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
