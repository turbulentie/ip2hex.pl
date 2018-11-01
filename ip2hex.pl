#!/usr/bin/perl

# IP address to HEX address converter
# usage: ip2hex [ip]
# ip2hex 158.23.45.10
# outputs 9E172D0A
# version 1.0

use Getopt::Std;

($me = $0) =~ s|.*/||;

getopts("h");

die "Usage: $me [ip]\n" if $opt_h;

$ip = $ARGV[0];

if (! $ip) {
        print "Enter IP addr: ";
        chop($ip = <STDIN>);
}

print "IP $ip is HEX ";
foreach (split /\./, $ip) {
        printf "\U%02x", $_;
}
print "\n"; 
