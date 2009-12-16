package TestSchema::Result::Foo;
our $VERSION = '1.093500';

use strict;
use warnings;

use parent 'ParentSchema::Result::Foo';

__PACKAGE__->load_components(qw{Helper::SubClass Core});

__PACKAGE__->subclass;

1;
