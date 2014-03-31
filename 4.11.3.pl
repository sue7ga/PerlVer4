use strict;
use warnings;

my %glligan_info = (
  name => 'Gilligan',
  hat  => 'White',  
  shirt => 'Red', 
  position => 'First Mate', 
);

my %skipper_info = (
 name => 'Skipper',
 hat => 'Black',
 shirt => 'Blue',
 position => 'Captain',
);

my %mr_howell = (
  name => 'Mr.Howell',
  hat => undef,
  shirt => 'White',
  position => 'Passenger',
);

my @castways = (\%glligan_info,\%skipper_info,\%mr_howell);

foreach my $person(@castways){
  $person->{location} = 'The Island';
}

foreach my $person(@castways){
  if($person->{name} =~ /Howell/){
    $person->{location} = 'The Island Country Club';
  }
}

use Data::Dumper;
print Dumper @castways;
