#!/usr/bin/perl
use strict;

{
  package Booloney;
  sub new { bless { i => 0 } }
  use overload '!' => sub { my $i = (++$_[0]{i}); sqrt $i  == int sqrt $i },
          fallback => 1;
}

my $x = Booloney->new;
for (1 .. 10) {
  my $bool = ! $x;
  printf "%s <- %20s \$x\n",
    ($bool ? 'T' : 'F' ),
    join(' ', ('!') x $_);
}
