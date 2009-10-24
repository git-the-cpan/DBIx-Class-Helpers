
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'DBIx-Class-Helpers',
  NAME      => 'DBIx::Class::Helpers',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Simplify\ the\ common\ case\ stuff\ for\ DBIx\:\:Class\.",
  VERSION   => '0.092970',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0',
    "Test::Exception" => '0',
    "Sub::Exporter" => '0',
    "DBIx::Class" => '0',
  },
  BUILD_REQUIRES    => {

  },
  test => {TESTS => 't/*.t'}
);

