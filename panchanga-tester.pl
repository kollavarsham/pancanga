#!/usr/bin/perl
use strict;
use warnings;

require('panchanga.pl');

&set_primary_constant;
&add_bija;
&set_secondary_constant;
&set_planetary_constant;

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
&test("(1582, 10, 1)");
&test("(1582, 10, 2)");
&test("(1582, 10, 3)");
&test("(1582, 10, 4)");
&test("(1582, 10, 5)");
&test("(1582, 10, 6)");
&test("(1582, 10, 10)");
&test("(1582, 10, 11)");
&test("(1582, 10, 12)");
&test("(1582, 10, 13)");
&test("(1582, 10, 14)");
&test("(1582, 10, 15)");
&test("(1752, 9, 1)");
&test("(1752, 9, 2)");
&test("(1752, 9, 3)");
&test("(1752, 9, 4)");
&test("(1752, 9, 5)");
&test("(1752, 9, 6)");
&test("(1752, 9, 10)");
&test("(1752, 9, 11)");
&test("(1752, 9, 12)");
&test("(1752, 9, 13)");
&test("(1752, 9, 14)");
&test("(1752, 9, 15)");

$function_name = "JulianDay_to_JulianDate";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");

$function_name = "JulianDay_to_GregorianDate";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");
&test("(2456656.5)");
&test("(2456657.5)");
&test("(2455957.5)");
&test("(2456351.5)");
&test("(2455985.5)");
&test("(2433313.5)");

$function_name = "JulianDay_to_ModernDate";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");
&test("(2456656.5)");
&test("(2456657.5)");
&test("(2455957.5)");
&test("(2456351.5)");
&test("(2455985.5)");
&test("(2433313.5)");

$function_name = "JulianDay_to_Ahargana";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");
&test("(2456656.5)");
&test("(2456657.5)");
&test("(2455957.5)");
&test("(2456351.5)");
&test("(2455985.5)");
&test("(2433313.5)");

$function_name = "get_weekday_name";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");
&test("(2456656.5)");
&test("(2456657.5)");
&test("(2455957.5)");
&test("(2456351.5)");
&test("(2455985.5)");
&test("(2433313.5)");

$function_name = "get_tithi";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(37.5275236212135, 294.989551683806)");
&test("(45.9229472947752, 333.593757395798)");
&test("(123.3068304585275, 15.597297524597)");
&test("(15.5275236212135, 163.989551683806)");
&test("(245.9229472947752, 3.593757395798)");
&test("(302.3068304585275, 56.597297524597)");

$function_name = "get_manda_equation";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(216.448410870245, \"sun\")");
&test("(-72.3184309200178, \"moon\")");
&test("(150.807334962742, \"moon\")");
&test("(206.122810882618, \"sun\")");
&test("(203.067198238109, \"moon\")");
&test("(210.065221570941, \"sun\")");
&test("(176.937266597806, \"moon\")");
&test("(208.094016226779, \"sun\")");
&test("(163.872300782873, \"moon\")");
&test("(207.108413554698, \"sun\")");
&test("(190.002232417937, \"moon\")");
&test("(209.07961889886, \"sun\")");
&test("(176.937266597806, \"moon\")");
&test("(208.094016226779, \"sun\")");
&test("(170.404783692979, \"moon\")");
&test("(207.601214890739, \"sun\")");
&test("(183.469749507872, \"moon\")");
&test("(208.58681756282, \"sun\")");
&test("(176.937266597806, \"moon\")");
&test("(208.094016226779, \"sun\")");
&test("(190.002232417937, \"moon\")");
&test("(209.07961889886, \"sun\")");
&test("(183.469749507872, \"moon\")");
&test("(208.58681756282, \"sun\")");
&test("(180.203508055438, \"moon\")");
&test("(208.340416894636, \"sun\")");
&test("(186.735990965544, \"moon\")");
&test("(208.833218230676, \"sun\")");
&test("(183.469749507872, \"moon\")");
&test("(208.58681756282, \"sun\")");
&test("(176.937266597806, \"moon\")");
&test("(208.094016226779, \"sun\")");
&test("(180.203508055438, \"moon\")");
&test("(208.340416894636, \"sun\")");
&test("(83.931123946793, \"mercury\")");
&test("(81.6338497004791, \"mercury\")");
&test("(191.523444971968, \"venus\")");
&test("(191.706262903748, \"venus\")");
&test("(34.7045977141798, \"mars\")");
&test("(31.3669823899913, \"mars\")");
&test("(-91.5542432559879, \"jupiter\")");
&test("(-88.9654048381817, \"jupiter\")");
&test("(-42.8326673204595, \"saturn\")");
&test("(-40.2050617905807, \"saturn\")");


$function_name = "declination";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(31.3101877453024)");
&test("(42.2597957259723)");
&test("(59.2349729472294)");
&test("(62.5975972349908)");
&test("(80.4818781723799)");
&test("(121.1497130809087)");
&test("(320.8687779979979)");

$function_name = "get_masa_num";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(31.3101877453024,190.002232417937)");
&test("(42.2597957259723,209.07961889886)");
&test("(59.2349729472294,183.469749507872)");
&test("(62.5975972349908,208.58681756282)");
&test("(80.4818781723799,180.203508055438)");
&test("(121.1497130809087,208.340416894636)");
&test("(320.8687779979979,195.735990965544)");
&test("(131.3101877453024,10.002232417937)");
&test("(242.2597957259723,9.07961889886)");
&test("(359.2349729472294,83.469749507872)");
&test("(62.5975972349908,108.58681756282)");
&test("(280.4818781723799,180.203508055438)");
&test("(21.1497130809087,108.340416894636)");
&test("(20.8687779979979,286.735990965544)");

$function_name = "get_saura_masa_day";
print "\n\nTesting the function \"" . $function_name . "\"\n\n";

&test("(2299158.5)");
&test("(2299159.5)");
&test("(2299160.5)");
&test("(2299161.5)");
&test("(2361220.5)");
&test("(2361221.5)");
&test("(2361222.5)");
&test("(1721457.5)");
&test("(2456656.5)");
&test("(2456657.5)");
&test("(2455957.5)");
&test("(2456351.5)");
&test("(2455985.5)");
&test("(2433313.5)");
