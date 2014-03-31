use strict;
use warnings;

while(1){
 
 print "please regrep pattern","\n";

 chomp(my $regrep = <STDIN>);
  
  print map{"    $_\n"}
  grep{ eval{/$regrep/}}
  glob(".* *"); 

}
