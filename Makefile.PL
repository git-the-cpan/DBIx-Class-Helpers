
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'DBIx::Class::Helpers',
                       'DISTNAME' => 'DBIx-Class-Helpers',
                       'AUTHOR' => 'Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>',
                       'ABSTRACT' => 'Simplify the common case stuff for DBIx::Class.',
                       'EXE_FILES' => [],
                       'VERSION' => '2.00200',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'String::CamelCase' => '0',
                                        'parent' => '0',
                                        'Test::Exception' => '0',
                                        'DBD::SQLite' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Sub::Exporter' => '0',
                                        'Test::More' => '0.88',
                                        'Lingua::EN::Inflect' => '0',
                                        'Test::Deep' => '0',
                                        'DBIx::Class' => '0.08117'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



