use strict;
use warnings;

$|=1; 											#to put-off output buffering and get immediate outputs

sub main {
	my @files = ('C:\Users\sravya\Desktop\OPT.jpg',
				'C:\Users\sravya\Desktop\OPT',
				'C:\Users\sravya\Desktop\DFT.docx',
				);
	
	#my $file ='C:\Users\sravya\Desktop\OPT.jpg';
	
	foreach my $file (@files){                  #arrays
		print "Hello World! \n";
		if(-f $file){                           #checking the presence of file
			print "found file $file \n";
		}
		else{
		print "file not found: $file \n";
		}
	}
	
	
}

main();


