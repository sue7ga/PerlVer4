use strict;
use warnings;

my $greeting = sub {print "hello,world!",$_[0],"\n"};
print $greeting->(7);

