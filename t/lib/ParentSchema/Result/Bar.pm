package ParentSchema::Result::Bar;
our $VERSION = '0.093071';


use parent 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components('Core');

__PACKAGE__->table('Bar');

__PACKAGE__->add_columns(qw/ id foo_id /);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->belongs_to( foo => 'ParentSchema::Result::Foo', 'foo_id' );

1;
