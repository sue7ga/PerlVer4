use strict;
use warnings;

use File::Basename;

my @json_files = glob("json.pl");

my $old_name = "@json_files";

my $aaa = 'ddd.pl';
my $new_name = 'minits.pl';

rename $new_name => $aaa;
