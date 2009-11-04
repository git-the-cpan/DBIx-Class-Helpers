package TestSchema::Result::Station;
our $VERSION = '0.093071';


use parent 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components('Core');

__PACKAGE__->table('Station');

__PACKAGE__->add_columns(qw/ id name /);

__PACKAGE__->set_primary_key('id');

1;
