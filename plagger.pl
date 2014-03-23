use strict;
use warnings;
use Data::Dumper;

my $string = "34:20:9:20:2:4:japan";
my @second = split /:/,$string;

my %p;
@p{qw(second minute hour day month year zone)} = @second;

print Dumper \%p;



