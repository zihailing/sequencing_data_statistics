#!/usr/bin/perl
use strict; use warnings;
use FileHandle;
my($file) = @ARGV;

my $in = FileHandle->new("< $file");
my $num = 0;
while(<$in>){
	chomp;
	if($_ =~ /Aligned/){
		$_ =~ /([^\/]+).+\D(\d\d\d+)/;
		my $name = $1;
		my $mapped = $2/1000000;
		my $aa = sprintf("%.2f",$mapped);
		$num = $2;
		print "$name\t$aa\t"
	}elsif($_ =~ /of/){
		$_ =~ /(\d\d\d+)/;
		my $num2 = $num -$1;
		my $uniq_mapped = $num2/1000000;
		printf("%.2f\n",$uniq_mapped);
	}
}
