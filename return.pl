use strict;
use warnings;

my @names = qw/fred barney betty dino wilma pebbles bamm-bamm/;
my $result = &which_element_is("dino",\@names);

sub which_element_is{
  my($what,$array) = @_;
  foreach my $key(@$array){
   if($what eq $key){
     #$key is what number?
   }
  }
}

print $result,"\n";
