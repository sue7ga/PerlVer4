use WWW::Mechanize;
use strict;
use warnings;
use utf8;
use Encode;

my $agent = WWW::Mechanize->new;
$agent->get('http://mixi.jp/');

$agent->submit_form(
   with_fields => {
     email =>'suehirosuehirosuehiro@yahoo.co.jp',
     password =>'hirokih',
   },
);


use Data::Dumper;
print Dumper $agent;


