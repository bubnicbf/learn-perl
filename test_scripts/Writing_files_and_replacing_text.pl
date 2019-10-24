use strict;
use warnings;

$|=1;

sub main{

	my $input = 'test.txt';
	open(INPUT,$input) or die "can't open file $input"; #INPUT:file handler
	
	my $output = 'output.txt';                         #Create an output file:   .. = '> filename';
	open(OUTPUT,'>'.$output) or die "can't create $output";
	
	
	
	while(my $line=<INPUT>){
		if($line=~/\bsay\b/){
			$line =~ s/say/SAY/ig;
			print OUTPUT $line;
		}
	}
	close(INPUT);
	close(OUTPUT);
}

main();