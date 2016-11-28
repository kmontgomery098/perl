if ($ARGV[0] eq "-top_exon"){
	toptop($ARGV[2])
}

sub toptop{
	my $filename=$_[0];
	open(IN,$filename) or die "Nothing";
	my %paired;
	while (<IN>){ 
		my @col=split(/\t/,$_);
		#$paired={$col[3],$col[10]};
		#my $mRNA=$col[3];
		#print $mRNA;
		#my $exon=$col[10];
		$paired{$col[3]}=$col[10];
		print $paired."\n";
		#my %paired = map {$col[3]->[0] => $col[10]->[1]} @col;

		#my @exons=split(/,/,$col[10]);
		#my @ordered = sort {$b <=> $a} @exons[0]; #a and b are random values to sort 
		#my $paired =join("\t",$col[3],$ordered);
		#print $paired."\n";
}
}