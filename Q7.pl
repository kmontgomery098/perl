#!/usr/bin/perl

#my $file = "Mrpl44both.fasta";
#open my $info, $file or die "No $!";

open(START,"<$ARGV[0]") or die "No input"; #takes any file at command line
#open(FINAL, ">pal.fasta"); 

my $sequence="";
while(<START>){
	if ($_=~m/^[^>](\S+)$/) {				#[^] means not !~m/^>/ must be numeric	
		$sequence.=$1;				
	}
}
my %pal_count;
while ($sequence=~m/(\w)(?:(?R)|\w?)\1/g){#while and /g makes command global
	if (length($&) >= 6){
		if ($pal_count{$&})	{				#$& is entire match, {{{{to access hash}}}}
			$pal_count{$&}++;
		} else {$pal_count{$&}=1;}																				#print $&."\n"; to check what while is returning 
	}
	pos($sequence) -= (length($&)-1);
}	

my @ordered = (keys %pal_count); #turn hash into an array since sort only works on array
@ordered=sort {$pal_count{$b} <=> $pal_count{$a}}@ordered; 
#print "@ordered\n";

print "$ordered[$_]\t$pal_count{$ordered[$_]}\n" for (0..9);






 
#for @ordered { print ""}
#for my $key (keys %pal_count) { print "$key\t$pal_count{$key}\n";}
#hash is a dictionary in python  


#if 
		#print  

#find all palindromes 
#if greater than 6... store 


	