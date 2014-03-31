use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;

my $ua = LWP::UserAgent->new;
my $res = $ua->get('http://www.ekidata.jp/api/l/11302.json');

$res->{_content} =~ s/if\(typeof\(xml\)==\'undefined\'\) xml = {};//g;
$res->{_content} =~ s/xml.data = //g;
$res->{_content} =~ s/if\(typeof\(xml.onload\)==\'function\'\) xml.onload\(xml.data\);//g;


my $data = $res->is_success ? decode_json($res->{_content}):"";

foreach my $nef (@{$data->{station_l}}){
  print "station_cd:",$nef->{station_cd},"\n"; 
  print "station_g_cd:",$nef->{station_g_cd},"\n"; 
  print "lat:",$nef->{lat},"\n"; 
  print "station_name:",Encode::encode_utf8($nef->{station_name}),"\n"; 
  print "lon:",$nef->{lon},"\n"; 
  print "\n";
}


