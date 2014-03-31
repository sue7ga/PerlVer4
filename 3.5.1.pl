use strict;
use warnings;

my @files = @ARGV;

my @size_less_1000 = map{'    '.$_}grep{ (-s) < 1000}@files;

print "@size_less_1000","\n";
