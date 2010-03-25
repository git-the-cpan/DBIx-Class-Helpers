package TestSchema::ResultSet;
our $VERSION = '2.003002';

use strict;
use warnings;

use base 'DBIx::Class::ResultSet';

__PACKAGE__->load_components('Helper::ResultSet::IgnoreWantarray');

1;

