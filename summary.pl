use strict;
use utf8;

my $input = $ARGV[0];

my $fp;
open $fp, "<", $input or die "Failed to open $input";

print "             prc thr   nsecs/call      samples   errors cnt/samp\n";

while(my $line = <$fp>) {
  if ($line =~ m!prc\s+thr\s+nsecs/call\s+samples\s+errors\s+cnt/samp!) {
     my $next = <$fp>;
     print $next;
  }
}
