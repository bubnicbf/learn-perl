use strict; #force you to delcare variables
use warnings;

$|=1;

sub main{   #entry-point subroutine
	
	#my $text="Hello world";
	#print $text;
	
	my @emails=('santosh@siu.edu',
				 'santosh143.tgmail.com',
				 'sanju4me143@gmail.com'
				);
	
	foreach my $email(@emails){
		print "$email\n";
		if($email =~ /\w+\@\w+\.\w+/){
			print "Valid e-mail:'$email'\n";
		}
		else{
			print "Not a valid e-mail:'e-mail'\n";
		}
	}
}

main();