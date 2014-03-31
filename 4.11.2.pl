use strict;
use warnings;

my @gilligan = qw/hoge foo zoo/;
my @skipper = qw/desu ne suge/;
my @professor = qw/aaa bbb ccc ddd/;

my %all = (
  Gilligan => \@gilligan,
  Skipper => \@skipper,
  Professor =>\@professor,
);

check_items_for_all(\%all);

sub check_items_for_all{
  my $all = shift;
  my $who;
  my $items;
  foreach my $key(%$all){
     $who = $key;
     my @items = @{$all->{$key}};
     print "$who","have","@items";
  }
}
