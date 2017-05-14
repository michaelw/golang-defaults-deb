#!/usr/bin/perl

# Extract upstream version from version in changelog.

package main;

use warnings;
use strict;

use Dpkg::Version;

my $v = Dpkg::Version->new(`dpkg-parsechangelog --count 1 | awk '\$1 == "Version:" {print \$2}'`)->version();
$v =~ /^([0-9]+\.[0-9]+).*/;
printf("%s\n", $1);

