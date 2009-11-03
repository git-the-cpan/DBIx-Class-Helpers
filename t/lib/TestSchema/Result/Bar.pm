package TestSchema::Result::Bar;
our $VERSION = '0.093070';



use strict;
use warnings;

use parent 'ParentSchema::Result::Bar';

__PACKAGE__->load_components(qw{Helper::SubClass Core});

__PACKAGE__->subclass;

1;
