#!/usr/bin/env perl6

use v6.c;

use Test;

use JSON::WSP;

my $request-data = $*PROGRAM.parent.child('data/request.json').slurp;

my $request;

lives-ok {
    $request = JSON::WSP::Request.from-json($request-data);

}, "can make request from JSON";



done-testing;
# vim: expandtab shiftwidth=4 ft=perl6
