use strict;
use warnings;
use Carp;
my %provisions;
my $person;

while(<DATA>){
  if(/^(\S.*)/){
    $person = $1;
    $provisions{$person} = [] unless $provisions{$person};
  }elsif(/^\s+(\S.*)/){
    push @{$provisions{$person}},$1;
  }else{
    croak "I don't understand:$_";
  }
}

use Data::Dumper;

print Dumper \%provisions;


__DATA__
The Skipper
 blue_shirt
 hat
 jacket
 preserver
 sunscreen
Professor
 sunscreen
 water_bottle
 slide_rule
Gilligan
 red_shirt
 hat
 lucky_socks
 water_bottle
