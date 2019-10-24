use strict;

use warnings;



$|=1;



sub main{



	my $input = 'test.txt';

	open(INPUT,$input) or die "can't open file $input"; #INPUT:file handler

	

	my $output = 'output.txt';                         #Create an output file:   .. = '> filename';

	open(OUTPUT,'>'.$output) or die "can't create $output";


	while(my $line=<INPUT>){

		if($line=~/\begg\b/){
			
			#print "Input line:$line\n " ;
			$line =~ s/egg/EGG/ig;            #s represents a white space character #i ignores the case and becomes case insensitive
			#print "Output line:$line\n" ;     #g makes the replacement global. Otherwise it just replaces the first occurence of the match.
			print OUTPUT $line;

		}

	}

	close(INPUT);

	close(OUTPUT);

}



main();
