
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-TaskWeaver',
  NAME      => 'Dist::Zilla::Plugin::TaskWeaver',
  AUTHOR    => "Ricardo\ Signes\ \<rjbs\@cpan\.org\>",
  ABSTRACT  => "a\ PodWeaver\ plugin\ used\ to\ build\ Task\ distributions",
  VERSION   => '0.093390',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.88',
    "Pod::Elemental" => '0',
    "Dist::Zilla" => '1.093371',
    "Moose::Autobox" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

