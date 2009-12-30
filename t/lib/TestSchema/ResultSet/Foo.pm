package TestSchema::ResultSet::Foo;
our $VERSION = '2.00000_2';
use strict;
use warnings;

use parent 'TestSchema::ResultSet';

__PACKAGE__->load_components(qw{ Helper::ResultSet::Union Helper::ResultSet::Random Helper::ResultSet::VirtualView });

1;
