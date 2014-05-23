use strict;
use warnings;
use utf8;

use IO::File;
use XML::TreePP;
use Data::Dumper;

my $xml_parser = XML::TreePP->new();
my $xml = $xml_parser->parsefile('sample.xml');

my $person = $xml->{'addressBook'}{'person'};

print ref $person;
