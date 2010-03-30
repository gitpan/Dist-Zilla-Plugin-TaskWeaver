
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::TaskWeaver',
                       'DISTNAME' => 'Dist-Zilla-Plugin-TaskWeaver',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ricardo Signes <rjbs@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'a PodWeaver plugin used to build Task distributions',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100890',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::FileGatherer' => '0',
                                        'Dist::Zilla::Plugin::PodWeaver' => '0',
                                        'Dist::Zilla::Role::PrereqSource' => '0',
                                        'Pod::Elemental' => '0',
                                        'Pod::Weaver::Role::Section' => '0',
                                        'Moose::Autobox' => '0',
                                        'Test::More' => '0.88',
                                        'Dist::Zilla' => '2',
                                        'Pod::Elemental::Transformer::Nester' => '0',
                                        'Pod::Weaver' => '3',
                                        'Pod::Elemental::Selectors' => '0',
                                        'Moose' => '0',
                                        'Pod::Weaver::Role::Dialect' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



