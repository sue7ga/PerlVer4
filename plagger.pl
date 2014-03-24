use strict;
use warnings;
use Data::Dumper;

my $string = "34:20:9:20:2:4:japan";
my @second = split /:/,$string;

my %my_friends = (
   "okabe" => 2003,
   "suenaga" => 1002,
   "miyagawa" => 2888,
);

my @keys = keys %my_friends;
my @values = values %my_friends;

my %p;
#@p{@keys} = @values;
%p = %my_friends;

print Dumper \%p;



