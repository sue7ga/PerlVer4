use URI;
use utf8;

use constant BASEURL => 'http://app.rakuten.co.jp/services/api/AuctionGenredId/Search/20120927';

my $url = URI->new(BASEURL);

$url->query_form(
  format=>'json',
  keyword => '楽天',
  genreId => 559887,
  shopCode => 'rakuten24',
  applicationId => '4890239043904eeeio38904',
);

use Data::Dumper;
print Dumper $url;

