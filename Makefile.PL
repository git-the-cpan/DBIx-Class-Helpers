
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Simplify the common case stuff for DBIx::Class.",
  "AUTHOR" => "Arthur Axel \"fREW\" Schmidt <frioux+cpan\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "DBIx-Class-Helpers",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "DBIx::Class::Helpers",
  "PREREQ_PM" => {
    "Carp::Clan" => "6.04",
    "DBIx::Class" => "0.0826",
    "DBIx::Class::Candy" => "0.001003",
    "DBIx::Introspector" => 0,
    "Lingua::EN::Inflect" => 0,
    "List::Util" => 0,
    "Module::Runtime" => 0,
    "String::CamelCase" => 0,
    "Sub::Exporter::Progressive" => "0.001006",
    "Try::Tiny" => 0,
    "namespace::clean" => "0.23",
    "parent" => 0
  },
  "TEST_REQUIRES" => {
    "DBD::SQLite" => 0,
    "DateTime::Format::SQLite" => 0,
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => "0.94"
  },
  "VERSION" => "2.019004",
  "test" => {
    "TESTS" => "t/*.t t/resultset/*.t t/resultset/shortcut/*.t t/row/*.t t/schema/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp::Clan" => "6.04",
  "DBD::SQLite" => 0,
  "DBIx::Class" => "0.0826",
  "DBIx::Class::Candy" => "0.001003",
  "DBIx::Introspector" => 0,
  "DateTime::Format::SQLite" => 0,
  "Lingua::EN::Inflect" => 0,
  "List::Util" => 0,
  "Module::Runtime" => 0,
  "String::CamelCase" => 0,
  "Sub::Exporter::Progressive" => "0.001006",
  "Test::Deep" => 0,
  "Test::Exception" => 0,
  "Test::More" => "0.94",
  "Try::Tiny" => 0,
  "namespace::clean" => "0.23",
  "parent" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



