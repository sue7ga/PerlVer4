use strict;
use warnings;

my @remapped_list = map{
 [$_ => $provisions{$_}];
}keys %provisions;

