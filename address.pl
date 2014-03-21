use strict;
use warnings;
use utf8;

use constant STATION_DATA =>
{
      '三重県' => {
    'いなべ市' => {
      'area_code' => '594',
      'local_code_digits' => '2'
    },
    '三重郡' => {
      'area_code' => '59',
      'local_code_digits' => '3'
    },
  },
  '京都府' => {
    '与謝郡' => {
      'area_code' => '772',
      'local_code_digits' => '2'
    },
    '久世郡久御山町' => {
      'area_code' => '75',
      'local_code_digits' => '3'
    },
  },
};

sub get_station_to_pref{
  return STATION_DATA;
}

my $data = '三重県';

use Data::Dumper;

my %data;
%data = get_station_to_pref()->{$data};

my @keys = keys %data;

print @keys,"\n";
