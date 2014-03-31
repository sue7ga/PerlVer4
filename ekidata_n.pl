use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;

my $ua = LWP::UserAgent->new;

my $line_cd = 31002;
my $url = "http://www.ekidata.jp/api/n/".$line_cd.".json";
my $res = $ua->get($url);

$res->{_content} =~ s/if\(typeof\(xml\)==\'undefined\'\) xml = {};//g;
$res->{_content} =~ s/xml.data = //g;
$res->{_content} =~ s/if\(typeof\(xml.onload\)==\'function\'\) xml.onload\(xml.data\);//g;

my $data = $res->is_success ? decode_json($res->{_content}):"";

foreach my $nef(@{$data->{station_join}}){
  print Encode::encode_utf8($nef->{station_name1}),"\n";
}
