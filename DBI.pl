use strict;
use warnings;

use DBI;

my $dsn = "DBI:mysql:database=Station;host=localhost;port=3000";

my $dbh =DBI->connect($dsn,'suenaga','hirokihH5',{'RaiseError'=>1});


