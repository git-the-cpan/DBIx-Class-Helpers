package TestSchema::Result::Foo_Bar;
our $VERSION = '2.003001';
use parent 'DBIx::Class';
use strict;
use warnings;

 __PACKAGE__->load_components(qw{Helper::Row::JoinTable Core});

 __PACKAGE__->join_table({
    left_class   => 'Foo',
    right_class  => 'Bar',
    right_method => 'bar',
 });


1;
