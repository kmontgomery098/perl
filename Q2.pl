#!usr/bin/perl
use strict;
use warnings;

sub protein{
	my $filename=$_[1];
	print $filename;
	open (my $fh, "<", $filename) or die "Nada";
	my $substring= $_[0];
	print $substring;
	my $header;
	while (my $line = <$fh>) {
		if ($line=~m/^>/){
			$header=$line;
		}
		if ($line=~m/(.*)$substring(.*)/){
			print $header;
		}	
		}
	}


if ($ARGV[0] eq "-name_find"){ 
	protein($ARGV[1],$ARGV[3])
}
	
 




#Q2.pl -name_find -name pepe -input Mrpl44test.fasta
#1. checks a bunch of proteins for a string at ARGV[1] at command line 
#2. returns ID 


#my $position=0;

#my $result = index($string, $)
#while ($result != -1){
#	say "The name $string is in sequence at $position";

#}
#define lines 