use strict;
use warnings;

use utf8;

my @flags = ('flag','sue','nano','tensai','programer','unko');

my @options = map{{$_ => 1}}@flags;

use Data::Dumper;

foreach my $key(@options){
  foreach my $nef(%$key){
    print $nef,"\n";
  }
}
