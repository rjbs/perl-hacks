package Note;
use base 'Exporter';
our @EXPORT = qw(o);

use overload '/' => sub {
  my ($self, $other, $rev) = @_;
  die "wtf" if $rev;
  print "NOTE: " . (~ $other) . "\n";
};

sub o() { bless {} => 'Note' }

1;

