use strict;
use warnings;

my @list = qw/hoge foo yuu unko taiko miyagawa ueki yoshiaki tomioka takahiro/;

my %hoge = @list;

use Data::Dumper;

while(my($key,$val) = splice @list,0,2){
 print "first_name:",$key,"\n";
 print "last_name:",$val,"\n";
}


