#!/usr/bin/perl 
#===============================================================================
#
#         FILE:  parse.pl
#
#        USAGE:  ./parse.pl  
#
#  DESCRIPTION:  
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Jody Phelan (JP), jody.phelan@lshtm.ac.uk
#      COMPANY:  LSHTM
#      VERSION:  1.0
#      CREATED:  10/14/2016 04:44:42 PM
#     REVISION:  ---
#===============================================================================

use strict;
use warnings;

my %nodes;
my $edge;
my $node;
open F, $ARGV[0] or die;
while(<F>){
	chomp;
	my ($s,$t) = (split /\s+/,$_)[0,1];
	$edge .= "\n\t\t{\"source\":\"$s\",\"target\":\"$t\"},";
	$nodes{$s} = 1;
	$nodes{$t} = 1;
}
close(F);


foreach my $n (keys %nodes) {
	$node .= "\n\t\t{\"id\":\"$n\"},";
}

print "{\n\t\"nodes\":[";
print substr($node,0,length($node)-1);
print "\n\t],\n\t\"edges\":[";
print substr($edge,0,length($edge)-1);
print "\n\t]\n}\n";
