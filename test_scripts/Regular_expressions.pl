#Regular expressions & Quantifiers

use strict;                                           
use warnings;

$|=1;

sub main{
	my $file='C:\Users\sravya\Desktop\test.txt';
	open(INPUT,$file) or die "Input file not found.\n";
	
	while(my $line = <INPUT>){
		if($line =~ /(f.*?y)/){ 				#. means any character 
												#+ -> means quantifier
												#* ->zero or more preceding characters
												#so*n-> matches words which starts with s and ends with n and in the middle all O's.
												#s.*n-> matches words which starts with s and ends with n (middle:any characters including spaces)
												#?->Not greedy (takes the minimum ex:so than soon Answer: so than)
			print "$1 \n";
		}
	}
	close(INPUT);
	 
}

main();