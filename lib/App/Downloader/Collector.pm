package Collector;

use 5.010;
use utf8;
use Moose;
use MooseX::Params::Validate;
use Carp qw/croak cluck/;
use namespace::autoclean;

use Moose::Util::TypeConstraints;

class_type 'Uri', {class => 'URI'};

no Moose::Util::TypeConstraints;

has urls => (
    is      => 'rw',
    isa     => 'ArrayRef[Uri]',
    default => sub { [] },
);

__PACKAGE__->meta->make_immutable;

sub collect
{
    my $self= shift;
    my %args= validated_hash \@_,
      url => {
        required => 1,
        isa      => 'URI',
        hoge     => {
            hoge => 'hoge',
            hoge => 'hoge',
        },
      },
      ;

    local $,= $/;
    say %args;
}

1;

