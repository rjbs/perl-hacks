use strict;
use warnings;
use ExtUtils::MakeMaker;

use lib 'lib';

WriteMakefile(
  NAME                => 'metamethod',
  AUTHOR              => 'Ricardo Signes <rjbs@cpan.org>',
  VERSION_FROM        => 'lib/metamethod.pm',
  ABSTRACT_FROM       => 'lib/metamethod.pm',
  PREREQ_PM => {
    # 'ExtUtils::MakeMaker' => 6, # actual minimum unknown
    # 'JSON'                => 2,
  },
);
