use strict;

my $array_in_array = [
 [
   'ichiro', 
   'misaki'
 ],
 [
   'ichiro',
   'manami'
 ],
 [
   'jiro',
   'taro'
 ],
 [
   'sasaki',
   'kuronosuke'
 ],
 [
   'sasaki',
   'shoichi'
 ]
];
use Data::Dumper;


foreach my $key(@$array_in_array){
 print $key->[0],"\n";
 print $key->[1],"\n";
}
