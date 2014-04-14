use strict;
use LWP::UserAgent;
use Carp;

my $uri = URI->new('http://gihyo.jp/');
my $ua  = LWP::UserAgent->new();

my $res = $ua->get($uri);

croak $res->status_line if $res->is_error;

my ($title) = $res->content =~ m!<title>(.+?)</title>!i;

print "$title\n";
