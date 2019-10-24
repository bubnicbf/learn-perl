#Regular expressions & Quantifiers (applies to the preceding characters)

use strict;                                           
use warnings;

$|=1;

sub main{
	my $file='C:\Users\sravya\Google Drive\Perl\Codes\3. Regular Expressions\RegEx.txt';
	open(INPUT,$file) or die "Input file not found.\n";
	
	while(my $line = <INPUT>){
		if($line =~ /(m.*n)/){ 				    
			print "$1 \n";
		} 
	}
	close(INPUT);
	 
}

main();

#. means any character 
#+ -> means quantifier
#* ->zero or more preceding characters
#so*n-> matches words which starts with s and ends with n and in the middle all O's.
#s.*n-> matches words which starts with s and ends with n (middle:any characters including spaces)
#?->Not greedy (takes the minimum ex:so than soon Answer: so than)
#() -> means a group
#$1 -> refers to the first group
#$2 -> refers to the second group. Each paranthesis pair is a group
#good example: Word -> "monsoon": /m.*n/->outputs monsoon ; /m.*?n/ ->outputs mon