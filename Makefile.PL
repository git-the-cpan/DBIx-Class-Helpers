
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
    "DBD::SQLite" => 0,
    "DBIx::Class" => "0.08127",
    "DBIx::Class::Candy" => "0.001003",
    "Lingua::EN::Inflect" => 0,
    "String::CamelCase" => 0,
    "Sub::Exporter" => 0,
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => "0.88",
    "parent" => 0
  },
  "VERSION" => "2.007004",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



