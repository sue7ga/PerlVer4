use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;

my $ua = LWP::UserAgent->new;
my $res = $ua->get('http://www.ekidata.jp/api/p/20.json');

$res->{_content} =~ s/if\(typeof\(xml\)=='undefined'\) xml = {};//g;
$res->{_content} =~ s/xml.data = //g;
$res->{_content} =~ s/if\(typeof\(xml.onload\)==\'function\'\) xml.onload\(xml.data\);//g;

my $data = $res->is_success ? decode_json($res->{_content}):"";

foreach my $nef(@{$data->{line}}){
  print "linename:",Encode::encode_utf8($nef->{line_name}),"\n";
  print "linecd:",Encode::encode_utf8($nef->{line_cd}),"\n";
}
