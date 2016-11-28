use warnings;
use strict;

sub randrand{
	#open(START,) or die "No input"; 
	#open(OUT, ">file.fasta");
	my $num_sequences=$_[0];
	my $nuc=$_[1];

	my @nucleotides= ("A", "T", "G", "C");
	my $string;
	for (my $i=0; $i <= $num_sequences; $i++){
	$string .= $nucleotides[rand @nucleotides] for 1...$nuc;
	print ">sequence $i $string\n";
	}
}


if ($ARGV[0] eq "-randomfasta"){
	randrand($ARGV[2],$ARGV[4])

}