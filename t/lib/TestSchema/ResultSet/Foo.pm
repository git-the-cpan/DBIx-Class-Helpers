package TestSchema::ResultSet::Foo;
our $VERSION = '0.093140';


use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';

__PACKAGE__->load_components('Helper::VirtualView');

1;