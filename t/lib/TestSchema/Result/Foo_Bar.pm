package TestSchema::Result::Foo_Bar;
our $VERSION = '0.093070';


use parent 'DBIx::Class';
use strict;
use warnings;

 __PACKAGE__->load_components(qw{Helper::JoinTable Core});

 __PACKAGE__->join_table({
    left_class   => 'Foo',
    left_method  => 'foo',
    right_class  => 'Bar',
    right_method => 'bar',
 });


1;
