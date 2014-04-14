use Net::Twitter;

my $nt = Net::Twitter->new(
  traints => [qw/API::Search/]
);

my $json = $nt->search({lang => 'ja',q => 'ubuntu'});

use Data::Dumper;
print Dumper $json;
