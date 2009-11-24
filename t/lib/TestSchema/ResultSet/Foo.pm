package TestSchema::ResultSet::Foo;
our $VERSION = '0.093270';


use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';

__PACKAGE__->load_components(qw{ Helper::Random Helper::VirtualView });

1;
