use strict;
use warnings;

my @hoge = qw/1 30 40 50 60 70/;
my @foo = qw/23 43 45 67 89 90 30 33/;

sub max_v{
  my($a,$b) = @_;
  my $n = @$a > @$b ? @$a : @$b;
  my @result;
  for(my $i = 0 ; $i < $n;$i++){
    push @result,$$a[$i] > $$b[$i] ? $$a[$i] : $$b[$i];
  }
  @result;
}

my @max_list = max_v(\@hoge,\@foo);

foreach my $key(@max_list){
  print $key,"\n";
}

