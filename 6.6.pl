use strict;
use warnings;

my %provisions = (
  'The Skipper' => [qw(blue_shirt hat jacket preservrer sunscreen)],
  'The Professor' => [qw(sunscreen water_bottle slide_rule batteries radio)],
  'Gilligan'=>[qw(red_shirt hat lucky_socks water_bottle)],
);

my @all_wet = grep{
 my @items = @{$provisions{$_}};
 grep $_ eq 'water_bottle',@items;
}keys %provisions;

my @remapped_list = map{
 [$_ => $provisions{$_}];
}keys %provisions;

use Data::Dumper;
print Dumper \@remapped_list,"\n";
