use strict;
use warnings;

$|=1;

sub main{
	my $text = "The code for this is 10KD1A04A8.";
	
	#if($text =~ /\sis\s(.+?)\./){
	#	print "Match1:'$1' \n ";
	#}
	if($text =~ /(\d\d\w{2,9})\./){
		print "Match1:'$1' \n ";
	}
}

main();