use strict;
use warnings;

$|=1;

sub main{
  my $input = 'test.csv';
  open(INPUT,$input) or die "cannot open the file";
  
  <INPUT>; #Reading the first line to skip the headers/heading in the csv files and store the data in the arrays
  while(my $line = <INPUT>){
    my @data = split ',' , $line;
    print @data[1].\n; #prints the column values in the array with the appropriate index and '.' appends the new line while printing
  }
  close INPUT;
}

main();
