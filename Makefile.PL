use utf8;
use strict;
use warnings;
use inc::Module::Install;

name 'App-Downloader';
all_from 'script/collect';

requires
  'utf8'             => 0,
  'strict'           => 0,
  'warnings'         => 0,
  'Moose'            => 0,
  'MooseX::Getopt'   => 0,
  'namespace::clean' => 0,
  'Encode::Locale'   => 0,
  'Encode::Argv'     => 0,
  'Carp'             => 0,
  ;
test_requires 'Test::More' => 0;
tests_recursive;

# recommends 'Text::CSV_XS'  => '0.50';
# no_index 'directory'       => 'demos';
install_script 'collect';

WriteAll;

1;

