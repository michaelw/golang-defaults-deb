#!/usr/bin/perl

# Extract upstream version from version in changelog.

package main;

use warnings;
use strict;

use Dpkg::Version;

my $v = Dpkg::Version->new(`dpkg-parsechangelog -SVersion`)->version();
$v =~ /^([0-9]+\.[0-9]+).*/;
printf("%s\n", $1);

