use strict;
use warnings;

$|=1;

sub main{
	my $file = 'C:\Users\sravya\Desktop\test.txt';
	
	open(INPUT,$file)or die "INPUT file $file not found ";#To open a file. Syntax:open(any name,file reference);
	#execution stops at this line
	while(my $line = <INPUT>){
		if($line =~/ Jeeves /){                      #(~ called tilda)
			print $line;
		}
	}
	
	close(INPUT);
}

main();