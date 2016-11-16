#! /usr/bin/perl -w

##########################################################################################
### Get sequences from de-novo assembly using specific ID_list   
###                                                                        
### Usage: filter_by_GO.pl 
###                                                                                                                                                 
##########################################################################################

use strict;

my $usage = "Usage: perl filter_by_ID.pl Trinotate.xls\n";
my $inputFile = $ARGV[0] or die $usage;

open (F1, $inputFile) or die "Couldn't open file $inputFile: $!\n";

my @line = split ( /\t/ , <F1>);

#print "$line[0]\t$line[1]\t$line[12]\t$line[13]\n" ;

my @array;

while (<F1>) {  					# reads Trinotate.xls line by line
	chomp($_);  					# remove newlines
	
	
	
	if ( $_ =~ m/^([^\t]+)\t([^\t]+)\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t[^\t]+\t([^\t]+)\t([^\t]+)\t/ ) {
	
		my $gene = $1;
		my $id = $2;
		my $GO1 = $3;
		my $GO2 = $4;	
		
		# print "$GO1 $GO2\n";
		
		if ( $GO1 =~ m/\w/ or $GO2 =~ m/\w/ ) {
			push @array, "$id\n";
			
			# print "Match!\n";
			
		}
		
		else {
		
			# print "NOOOOOO!\n";
		
		}
	}
}

foreach my $line ( @array ) {

	print $line;

}