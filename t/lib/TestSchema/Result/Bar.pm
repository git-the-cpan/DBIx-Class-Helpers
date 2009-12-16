package TestSchema::Result::Bar;
our $VERSION = '1.093500';

use strict;
use warnings;

use parent 'ParentSchema::Result::Bar';

__PACKAGE__->load_components(qw{Helper::SubClass Core});

__PACKAGE__->subclass;

1;
