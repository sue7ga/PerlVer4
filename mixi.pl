use strict;
use WWW::Mechanize;
use warnings;
use utf8;
use Encode;

my $agent = WWW::Mechanize->new;

$agent->get('http://mixi.jp/');

$agent->submit_form(
 with_fields => {
   email => 'suehirosuehirosuehiro@yahoo.co.jp',
   password =>'hirokih',
 },
);
use Data::Dumper;

$agent->get('http://mixi.jp/show_friend.pl?id=27880606');

my ($status) = $agent->content =~ /最終ログインは(.+)/;

$status =~ s/<a href=\"javascript:void\(0\);\" class=\"JS_popupLinkUnder3Days\">//;
$status =~ s/<\/span>//;
$status =~ s/<\/a>//;
$status =~ s/\）//;

print Encode::encode_utf8($status);
