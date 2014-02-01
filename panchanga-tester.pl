#!/usr/bin/perl
use strict;

require('panchanga.pl');

my $function_name = "sqr";

print "\n\nTesting the function \"" . $function_name . "\"\n\n";

sub test {
    my ($function_params) = @_;
    my $function_call = $function_name . $function_params;
    print $function_call . ": " . eval($function_call) . "\n";
    print "\n";
}

&test("(23)");
&test("('23')");
&test("(0)");
&test("(-23)");
&test("('-23')");
&test("(\"a\")");
&test("('a')");
&test("('A brown fox is here')");
&test("(23.456)");
&test("(23.99999)");
&test("(-23.456)");
&test("(-23.99999)");
