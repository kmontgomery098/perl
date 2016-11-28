#!usr/bin/perl
use strict;
use warnings;



sub protein{
	my $filename=$_[1];
	open (my $fh, "<", $filename) or die " '$filename' Nada";
	my $substring= $_[0];
	#my $sequence="";
	while (my $line = <$fh>) {
		chomp $line; 
		foreach (@substrings){
			print $line;
		}
	}
}


	#while(<START>){
		#if (index($sequence,$string)!=-1){
			#if (m/^>/){
				#$sequence.=$1;
				#print $sequence."\n";
 




#Q2.pl -name_find -name pepe -input Mrpl44test.fasta
#1. checks a bunch of proteins for a string at ARGV[1] at command line 
#2. returns ID 


#my $position=0;

#my $result = index($string, $)
#while ($result != -1){
#	say "The name $string is in sequence at $position";

#}
#define lines 