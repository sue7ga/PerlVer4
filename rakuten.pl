use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;
use URI::Escape;

my $ua = LWP::UserAgent->new;
my $res = $ua->get('https://app.rakuten.co.jp/services/api/IchibaItem/Search/20140222?applicationId=3766475e74cb414b34384f5034546640&keyword=%E7%A6%8F%E8%A2%8B&sort=%2BitemPrice');

my $escaped = uri_unescape('%E7%A6%8F%E8%A2%8B');

use Data::Dumper;
my $ref = decode_json($res->{_content});


foreach my $key (keys %$ref){
 if(ref $ref->{$key} eq 'ARRAY'){
   foreach my $items(@{$ref->{$key}}){
     foreach my $item (keys %$items){
       print Encode::encode_utf8($items->{$item}->{itemName}),"\n";
       print $items->{$item}->{asurakuFlag},"\n";
       my @prefs = split /\//,$items->{$item}->{asurakuArea},"\n";
       foreach my $pref(@prefs){
         print Encode::encode_utf8($pref),"\n";
       }
     }
   }
 }
}






