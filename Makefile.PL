
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'DBIx-Class-Helpers',
  NAME      => 'DBIx::Class::Helpers',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Simplify\ the\ common\ case\ stuff\ for\ DBIx\:\:Class\.",
  VERSION   => '2.00000_2',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::Exception" => '0',
    "parent" => '0',
    "String::CamelCase" => '0',
    "DBD::SQLite" => '0',
    "Sub::Exporter" => '0',
    "Test::More" => '0.88',
    "Lingua::EN::Inflect" => '0',
    "Test::Deep" => '0',
    "DBIx::Class" => '0.08100',
  },
  test => {TESTS => 't/*.t'}
);

