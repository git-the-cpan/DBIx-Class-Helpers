package TestSchema::Result::Foo;
our $VERSION = '0.093140';



use strict;
use warnings;

use parent 'ParentSchema::Result::Foo';

__PACKAGE__->load_components(qw{Helper::SubClass Core});

__PACKAGE__->subclass;

1;
