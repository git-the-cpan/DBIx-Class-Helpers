package TestSchema::ResultSet::Foo;
our $VERSION = '2.003000';
use strict;
use warnings;

use parent 'TestSchema::ResultSet';

__PACKAGE__->load_components(qw{ Helper::ResultSet::Union Helper::ResultSet::Random });

1;
