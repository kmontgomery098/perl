#!/usr/bin/perl
use strict;
use warnings;
#my $file = "Mrpl44both.fasta";
#open my $_ or die "No $!";
#Q1 output file with ID and sequence in two consecutive lines 

#removes all white space $line =~ s/\s+//g

#open(FINAL, ">oneline.fasta"); 


sub chompchomp{
my $filename=$_[0];
open(my $fh,"<", $filename) or die "No input"; #takes any file at command line
my $newline="";
while(my $l = <$fh>){					#while(<START>)
	if ($l=~m/^>/){	#^start of the line
		#print $newline.$l;
		print $l."\n";
		#$newline="\n";
	#} elsif ($l=~m/[^>]/) {
	} else {				#[^ ] means not !~m/^>/ must be numeric	
		chomp $l;
		#$newline ="\n";
	}
}
}
if ($ARGV[0] eq "-chomp"){
	chompchomp($ARGV[2])
}
#close START;
#close FINAL;



#!/usr/bin/perl

#open(FASTA, "<your.fa");
#while(<FASTA>) {
#    chomp($_);
#    if ($_ =~  m/^>/ ) {
#        my $header = $_;
#        print "$header\n";
#    }
#}






#while ($_=<>){
#	chomp;
#	if(/^>.*/) {
#		print "\n$_\n";
#	}
#	else {
#		print;
#	}
#}
#exit;