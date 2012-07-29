#!/usr/bin/perl

use feature q/:5.10/;
use utf8;
use strict;
use warnings;
use Carp qw/croak cluck/;

use lib qw/lib/;
use Daemon;

my ($url, $name)= @ARGV;

my $daemon= new Daemon;

$daemon->download($url, $name);

