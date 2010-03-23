package TestSchema::Result::Foo;
our $VERSION = '2.003000';

use strict;
use warnings;

use parent 'ParentSchema::Result::Foo';

__PACKAGE__->load_components(qw{Helper::Row::NumifyGet Helper::Row::SubClass Core});

__PACKAGE__->subclass;

1;
