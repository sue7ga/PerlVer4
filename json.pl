use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;

my $ua = LWP::UserAgent->new;
my $res = $ua->get('http://www.ekidata.jp/api/n/11302.json');

$res->{_content} =~ s/xml.data =//g;
$res->{_content} =~ s/xml//g;
$res->{_content} =~ s/$res->{_content} =~ s\/xml\/\/g;//g;
$res->{_content} =~ s/;//;
$res->{_content} =~ s/if\(typeof\(\)==\'undefined\'\)  = {}//g;
$res->{_content} =~ s/if\(typeof\(.onload\)==\'function\'\) .onload\(.data\);//g;

my $data = $res->is_success? decode_json($res->{_content}):"";

foreach my $nef (@{$data->{station_join}}){
  print encode_utf8($nef->{station_name2}),"\n";
}




