if ($ARGV[0] eq "top_exon"){
	toptop($ARGV[2])
}

sub toptop{
	my $filename=$_[0];
	open(IN,$filename) or die "Nothing";
	my %
	while (<IN>){ 
		my @col=split(/\t/,$_);
		my @exons=split(/,/,$col[10]);
		my @ordered = sort {$a <=> $b} @exons; #a and b are random values to sort 
		print $ordered[0]."\n";
}