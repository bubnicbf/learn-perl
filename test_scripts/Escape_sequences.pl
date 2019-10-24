use strict;
use warnings;

$|=1;

sub main{
	
	# \d digit
	# \s Space
	# \S non-space
	# \w alphanumeric (Only perl includes '_')
	
	# * Zero or more of the preceding character, as many as possible
	# + one or more preceding, as many as possible
	# *? Zero or more of the preceding character, as few as possible
	# +? one or more preceding, as few as possible
	
	#{3,6} atleast three and atmost 6}
	#{3,}  atleast three
	
	my @texts = ('MUX$123456', 'MUX$1346', 'MUX$134');
	my $var=0;
	foreach my $text(@texts){
		if($text =~ /(MUX\$\d{3,6})/){
			print "Matched:'$1' \n";
			$var=$var+1;
		}
	}
	
	print "No of words that contain atleast 3 digits:'$var'";
}

main();
