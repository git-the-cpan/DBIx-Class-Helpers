package TestSchema::Result::Bar;
our $VERSION = '2.00101';

use strict;
use warnings;

use parent 'ParentSchema::Result::Bar';

__PACKAGE__->load_components(qw{Helper::Row::SubClass Core});

__PACKAGE__->subclass;

1;
