package TestSchema::ResultSet;
our $VERSION = '1.093500';

use strict;
use warnings;

use base 'DBIx::Class::ResultSet';

__PACKAGE__->load_components('Helper::IgnoreWantarray');

1;

