use strict;
use warnings;


sub chompchomp{
my $filename=$_[0];
open(START, $filename) or die "No input"; 
open(OUT, ">file.fasta");
my $sequence; my $fl=1; 
while(<START>){
	if (m/^>/){	#identifies start of FASTA file
		if (!$fl) {
		print OUT $sequence."\n";
		$sequence="";
	}
	$fl=0;
	print OUT;
	} else {
		chomp; #remove newlines from rest of the file 
		$sequence .=$_;
	}
}
print OUT $sequence."\n";
close START; close OUT;
}
if ($ARGV[0] eq "-chomp"){
	chompchomp($ARGV[2])
}
