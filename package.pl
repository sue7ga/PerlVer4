use strict;
use warnings;

my $package = 'WWW::Rakuten::API::Category::AuctionItem';
my $last_coron = rindex($package,'::');
my $sub = substr($package,$last_coron);
$sub =~ s/:://;

print $sub;



