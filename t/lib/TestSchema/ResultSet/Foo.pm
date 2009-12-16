package TestSchema::ResultSet::Foo;
our $VERSION = '1.093501';
use strict;
use warnings;

use parent 'TestSchema::ResultSet';

__PACKAGE__->load_components(qw{ Helper::Random Helper::VirtualView });

1;
