#!/usr/bin/env perl6

use v6.c;

use Test;

use JSON::WSP;

my $response-data = $*PROGRAM.parent.child('data/response.json').slurp;

my $response;

lives-ok {
    $response = JSON::WSP::Response.from-json($response-data);

}, "can make response from JSON";



done-testing;
# vim: expandtab shiftwidth=4 ft=perl6
