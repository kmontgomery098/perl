
#get smallest exon
if ($ARGV[0] eq "-min_exon_list"){
	min($ARGV[2])
}
sub min{
	my @data= $_[0];
	#open(START, @data) or die "No input"; 
	#open(OUT, ">exon.bed");
	my %small;
	foreach my $line (@data){
		my @col=split(/\s+/,$line);
		my $colexon= $col[10];
		next if (! defined ($colexon));
		print $colexon;
		my @ordered= (keys %small);
		@ordered=sort {$small{$b}<=>$small{$a}}@ordered;
	
		print "$ordered[$_]\t$small{$ordered[$_]}\n";
	}





#
}