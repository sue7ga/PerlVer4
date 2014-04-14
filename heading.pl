use strict;
use warnings;

sub current_heading{
  return 50;
}

sub turn_towards_heading{
 my $new_heading = shift;
 my $current_heading = current_heading();
 print "Current heading is ",$current_heading,"\n";
 my $direction = "right";
 my $turn = ($new_heading - $current_heading)%180;
 unless($turn){
   print "On course (good job!).\n";
   return;
 }
 print "Come about to $new_heading";
 if($turn > 180){
  $turn = 360 - $turn;
  $direction = "left";
 }
 print "by turning $direction $turn degrees.\n";
}

print turn_towards_heading(270);
