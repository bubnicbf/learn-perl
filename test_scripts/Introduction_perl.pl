use strict;  #enables strict variable declarations, Symbolic Refs and Subs
use warnings;

$|=1; 											#to put-off output buffering and get immediate outputs

#This is a sub-routine
#main is just a name. You can call it anything
sub main {
#my => represents the first use of the variable
#files => array of files
	my @files = ('C:\Users\sravya\Desktop\OPT.jpg',
				'C:\Users\sravya\Desktop\OPT',
				'C:\Users\sravya\Desktop\DFT.docx', # you can have comma even for the last element unlike other languages
				);
	
	#my $file ='C:\Users\sravya\Desktop\OPT.jpg';
	
	foreach my $file (@files){                  #arrays
		print "Hello World! \n";
		if(-f $file){                           #-f => checking the presence of file
			print "found file $file \n";
		}
		else{
		print "file not found: $file \n";
		}
	}
	
	
}

main();
