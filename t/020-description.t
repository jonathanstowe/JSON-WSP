#!/usr/bin/env perl6

use v6.c;

use Test;
use JSON::WSP;

my $description-data = $*PROGRAM.parent.child('data/specification.json').slurp;

my $description;

lives-ok { 
    $description = JSON::WSP::Description.from-json($description-data);

}, "can make description from JSON";

diag $description.perl;

done-testing;
# vim: expandtab shiftwidth=4 ft=perl6
