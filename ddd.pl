use strict;
use warnings;
use utf8;
use Carp;


my %Units = (
  map(($_,1),qw(s second seconds sec secs)),
  map(($_,60),qw(m minute minutes min mins)),
  map(($_,60*60),qw(h hr hour hours))
);


use Data::Dumper;


print Dumper %Units;

foreach my $key(keys %Units){
  print "key:",$key,"\n";
  print "value:",$Units{$key},"\n";
}
