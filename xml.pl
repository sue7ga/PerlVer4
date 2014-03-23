use strict;
use warnings;

use XML::Simple;

my $data = XMLin('http://www.ekidata.jp/api/l/30015.xml');

use Data::Dumper;
print Dumper $data;


