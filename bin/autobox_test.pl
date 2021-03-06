#!perl -w
# $Id:$
# $HeadURL:$
use strict;
use warnings;

use Carp;
use Getopt::Long;
Getopt::Long::Configure qw/bundling no_ignore_case/;
use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;
use Pod::Usage;

use 5.016;

local $| = 1;

my $mydebug = 0;
my $dryrun  = 0;

GetOptions(
    "help|h"         => sub { pod2usage( 1 ); },
    "debug|d"        => \$mydebug,
    "dryrun|n"       => sub { $dryrun = 1; $mydebug = 1; },
);

my $prog = $0;
$prog =~ s/^.*\///;

use Moose::Autobox;

my %hash = (
    one => 1,
    two => 2,
);

my @array = ( "one", "two", "three" );

say "\%hash->say->each";
%hash->keys->say;

say "\@array->each->say";
@array->each->say;

__END__

