#!/usr/bin/perl
use strict;

require('panchanga.pl');

my $function_name = "arcsin";

print "\n\nTesting the function \"" . $function_name . "\"\n\n";

sub test {
    my ($function_params) = @_;
    my $function_call = $function_name . $function_params;
    print $function_call . ": [" . join(', ', map { "$_" } eval($function_call)) . "]\n";
}

&test("(23)");
&test("('60')");
&test("(0)");
&test("(-45)");
&test("('45')");
&test("(\"a\")");
&test("('a')");
&test("('A brown fox is here')");
&test("(23.456)");
&test("(23.99999)");
&test("(-23.456)");
&test("(-23.99999)");
&test("(75.2)");
&test("(83)");
&test("(-15.7)");
&test("(0.234)");
&test("(-0.25)");
&test("(0.1)");
&test("(0.2)");
&test("(0.3)");
&test("(0.4)");
&test("(0.5)");
&test("(0.6)");
&test("(0.7)");
&test("(0.8)");
&test("(0.9)");
&test("(0)");

print "\n\nTesting three_relation calls\n\n";
print &three_relation(-1, 1, 3). "\n";
print &three_relation(1, -1, -3). "\n";
print &three_relation(1, 1, 1). "\n";
print &three_relation(1, 5, -3). "\n";

$function_name = "next_date";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2013, 12, 31)");
&test("(2012, 01, 31)");
&test("(2013, 02, 28)");
&test("(2012, 02, 28)");
&test("(1950, 02, 01)");
&test("(1997, 9, 30)");
&test("(1752, 03, 24)");
&test("(1752, 9, 2)");
&test("(1997, 12, 30)");

$function_name = "ModernDate_to_JulianDay";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2013, 12, 30)");
&test("(2013, 12, 31)");
&test("(2012, 01, 31)");
&test("(2013, 02, 28)");
&test("(2012, 02, 28)");
&test("(1950, 02, 01)");
&test("(1997, 9, 30)");
&test("(1752, 03, 24)");
&test("(1752, 9, 2)");
&test("(1997, 12, 30)");
&test("(-1, 1, 31)");
&test("(7, 1, 1)");
&test("(0, 1, 1)");
&test("(2001, 1, 1)");
