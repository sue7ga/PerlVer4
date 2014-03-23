use strict;
use warnings;
use Encode;
use utf8;

my @people = qw/fred barney fred wilma dino barney fred pebbles/;
my %count;

$count{$_}++ foreach @people;

use Data::Dumper;

while( my($key,$value) = each %count){
 print "key:",$key,"\n";
 print "value:",$value,"\n";
}
