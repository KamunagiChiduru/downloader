#!/usr/bin/perl

use feature q/:5.10/;
use utf8;
use strict;
use warnings;
use Carp qw/croak cluck/;
use Daemon;

my ($url, $name)= @ARGV;

my $daemon= new Daemon(save_to => '~/downloads');

$daemon->download($url, $name);

