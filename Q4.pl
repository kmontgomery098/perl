
#get smallest exon
if ($ARGV[0] eq "-min_exon_list"){
	min($ARGV[2])
}

sub min{
	my $filename=$_[0];
	open(IN,$filename) or die "Nothing";
	while (<IN>){ 
		my @col=split(/\t/,$_);
		my @exons=split(/,/,$col[10]);
		my @ordered = sort {$a <=> $b} @exons; #a and b are random values to sort 
		print $ordered[0]."\n";
}
}

#join to connect two arrays 