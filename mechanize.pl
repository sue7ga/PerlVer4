use WWW::Mechanize;
use strict;
use warnings;
use utf8;
use Encode;

my $agent = WWW::Mechanize->new;
$agent->get('http://mixi.jp/');

$agent->submit_form(
   with_fields => {
     email =>'__MYEMAIL__',
     password =>'__MYPASS__',
   },
);

my %my_friends = (
 "岡部典孝" => 27880606,
);

$agent->get('http://mixi.jp/show_friend.pl?id=27880606');

my ($status) = $agent->content =~ /最終ログインは(.+)/;
my($first_name,$last_name) = $agent->content =~ /(\w+)\s+(\w+)さん/;

if($status =~ m!<a href="javascript:void(?:.*?);" class="JS_popupLinkUnder3Days">(.*?)</a>(?:.*?)</span>!g){
 print Encode::encode_utf8($first_name),Encode::encode_utf8($last_name),Encode::encode_utf8("さんの最終ログイン時間は"), Encode::encode_utf8($1),"\n";
}





