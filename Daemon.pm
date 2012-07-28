package Daemon;

use feature q/:5.10/;
use utf8;
use strict;
use warnings;
use Carp qw/croak cluck/;
use LWP::Simple;

sub new{
    my $this= shift;

    bless {save_to => '~/downloads', @_}, $this;
}

sub download{
    my $this= shift;
    my ($url, $name)= @_;

    my $content= get $url;
    croak "$!" unless defined $content;

    open my $f, '>', $this->{save_to} . $name or croak "$!";
    binmode $f;
    print $f $content;
    close $f or croak "$!";
}

1;

