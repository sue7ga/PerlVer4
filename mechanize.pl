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

$agent->get('http://mixi.jp/show_friend.pl?id=27880606');
use Data::Dumper;

#print Dumper $agent->content;

my ($status) = $agent->content =~ /最終ログインは(.+)/;



if($status =~ m!<a\s+href="javascript:void(0);"\s+class="JS_popupLinkUnder3Days">(.*?)</a>)</span>!xms){
  my $number = $1;
  print Encode::encode_utf8($number);
}





