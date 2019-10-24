use strict;
use warnings;

$|=1;

sub main{
	
	# \d digit
	# \s Space
	# \S non-space
	# \w alphanumeric
	
	# * Zero or more of the preceding character, as many as possible
	# + one or more preceding, as many as possible
	# *? Zero or more of the preceding character, as few as possible
	# +? one or more preceding, as few as possible
	
	#{3,6} atleast three and atmost 6}
	#{3,}  atleast three
	
	my $text = 'MUX$123456';
	my $var=0;
	if($text =~ /(MUX\$\d{3,6})/){
		print "Matched:'$1' \n";
		 
		$var=$var+1;
	}
	print "No of 3 letter words:'$var'";
}

main();