use strict;
use warnings;
use JSON;
use utf8;
use LWP::UserAgent;
use Encode;
use Data::Dumper;

my $ua = LWP::UserAgent->new;
my $res = $ua->get('http://www.ekidata.jp/api/n/11302.json');

print Dumper $res->{xml.data};
#print Dumper $res;

my $data = $res->is_success? decode_json($res->{_content}):"";

print Dumper $data; 

