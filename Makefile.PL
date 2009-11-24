
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'DBIx-Class-Helpers',
  NAME      => 'DBIx::Class::Helpers',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Simplify\ the\ common\ case\ stuff\ for\ DBIx\:\:Class\.",
  VERSION   => '0.093270',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
  (eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? () : (
    "Test::More" => '0.88',
    "parent" => '0',
    "Test::Exception" => '0',
    "SQL::Translator" => '0.11002',
    "DBD::SQLite" => '0',
    "Test::Deep" => '0',
  )),
    "Lingua::EN::Inflect" => '0',
    "Sub::Exporter" => '0',
    "DBIx::Class" => '0.08100',
  },
(eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? (
  BUILD_REQUIRES    => {
    "Test::More" => '0.88',
    "parent" => '0',
    "Test::Exception" => '0',
    "SQL::Translator" => '0.11002',
    "DBD::SQLite" => '0',
    "Test::Deep" => '0',
  },
) : ()),
  test => {TESTS => 't/*.t'}
);

