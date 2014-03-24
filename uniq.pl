use strict;
use warnings;

my @list = qw/sue moznion okabe noritaka okabe moznion sue shacho/;
my %seen = ();
my @uniq = grep{ ! $seen{$_}++}@list;
print "@uniq","\n";






