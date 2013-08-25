package Scrapable;

use utf8;
use Moose::Role;
use namespace::autoclean;

requires qw(scrape);

package Scrapable::Factory;

use utf8;
use Moose;
use namespace::autoclean;

has config => (
    required => 1, 
    is => 'ro', 
    isa => 'HashRef', 
);

__PACKAGE__->meta->make_immutable;

1;
