package DBIx::Class::Helper::ResultSet::Shortcut::Rows;
$DBIx::Class::Helper::ResultSet::Shortcut::Rows::VERSION = '2.023005';
use strict;
use warnings;

sub rows { shift->search(undef, { rows => shift }) }

1;

__END__

=pod

=head1 NAME

DBIx::Class::Helper::ResultSet::Shortcut::Rows

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
