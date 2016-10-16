#!/usr/bin/env perl6

use v6.c;

use Test;
use JSON::WSP;

my $description-data = $*PROGRAM.parent.child('data/specification.json').slurp;

my $description;

lives-ok { 
    $description = JSON::WSP::Description.from-json($description-data);

}, "can make description from JSON";

isa-ok $description.version, Version, "got the version";
is $description.version, '1.0', "and it appears to be what we expected";
is $description.types.elems, 3, "and we got the number of types we expected";
is $description.methods.elems, 3, "and three methods";

done-testing;
# vim: expandtab shiftwidth=4 ft=perl6
