use strict; #. means any character
use warnings;

$|=1;

sub main{
	my $file='C:\Users\sravya\Desktop\test.txt';
	open(INPUT,$file) or die "Input file not found.\n";
	
	while(my $line = <INPUT>){
		if($line =~ /h.s/){
			print $line;
		}
	}
	close(INPUT);
}

main();