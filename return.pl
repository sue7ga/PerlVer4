use strict;
use warnings;

my @names = qw/fred barney betty dino wilma pebbles bamm-bamm/;
my $result = &which_element_is("wilma",\@names);

sub which_element_is{
  my($what,$array) = @_;
  foreach(0..$#$array){
    if($what eq $$array[$_]){
       print $_;
    }
  }
}


