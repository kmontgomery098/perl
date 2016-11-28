#!/usr/bin/perl
use warnings;
use strict; 



#reads input one line at a time
sub idid{
	my $file = $_[0];
	open my $info, $file or die "No $!";
	while (my $line = <$info> ) {
		if ($line =~ /^>/){	#finds lines beginning with >
			print "$line";
		}
}	
}



#open(START, "<$ARGV[0]") or die "NADA!";

# while (<START>) {
#	if ($_=~m/^>/){				#didnt work with $line
#		print FINAL $_;
#	} 
#}	
#close START;



#open(START, "<$ARGV[0]") or die "NADA!";
#open(FINAL, "somethingsomething.fasta");
# while (<START>) {
#	if ($line=~m/^>/){	
#		print FINAL .$line;
#	} 
#}	
#close START;
#close FINAL;