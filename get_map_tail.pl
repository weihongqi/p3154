#/usr/local/ngseq/bin/perl

my $sample=shift;
my $reads="$sample\.trimtail.fasta";
my $tails="$sample\.tails.txt";
my $psl="$sample.trimtail.best.unique.psl";

$/=">";
open IN, "<$reads";
my $junk=<IN>;
my %hash=();
while(<IN>){
        chomp;
        my $seq="";
        my @lines=split(/\n/, $_);
        my @fields=split(/\s+/, $lines[0]);
        my $id=$fields[0];
        for(my $i=1; $i<@lines; $i++){
                my $temp=$lines[$i];
                $temp =~ s/\n//;
                $temp =~ s/\r//;
                $seq.="$temp";
        }
	$hash{$id}=$seq;
	#print "$id\t$seq\n";
}
close IN;

$/="\n";
my %tl=();
my %ts=();
open IN1, "$tails";
while(<IN1>){
	chomp;
	my @fields=split(/\t/, $_);
	my @ids=split(/\s+/, $fields[0]);
	my $len=$fields[3]-$fields[2];
	$tl{$ids[0]}=$len;
	$ts{$ids[0]}=$fields[5];
}
close IN1;

my $of1="$sample\.final_tails.txt";
my $of2="$sample\.dropped_tails.txt";
open OUT1, ">>$of1";
open OUT2, ">>$of2";
print OUT1 "read\tgene\tsite\tseq_tail\tlen_tail\n";
print OUT2 "read\tgene\tsite\tseq_tail1\tlen_tail1\tseq_tail2\tlen_tail2\tcount_As_tail2\tperc_As_tail2\n";
open IN2, "<$psl";
while(<IN2>){
        chomp;
        my @fields=split(/\t/, $_);
        if($fields[10] != $fields[12]){
                my $len=$fields[10]-$fields[12];
                my $sub=substr $hash{$fields[9]}, $fields[12], $len;
                my $count = $sub =~ tr/A//;
                my $perc=$count/$len*100;
		if($perc >= 90){
			my $fs=$sub.$ts{$fields[9]};
			my $fl=$len+$tl{$fields[9]};
			print OUT1 "$fields[9]\t$fields[13]\t$fields[16]\t$fs\t$fl\n";
		}elsif($len < 10 && $len >  2 && ($len-$count) == 1){
			my $fs=$sub.$ts{$fields[9]};
                        my $fl=$len+$tl{$fields[9]};
                        print OUT1 "$fields[9]\t$fields[13]\t$fields[16]\t$fs\t$fl\n";
		}else{
                	print OUT2  "$fields[9]\t$fields[13]\t$fields[16]\t$ts{$fields[9]}\t$tl{$fields[9]}\t$sub\t$len\t$count\t$perc\n";
        	}
	}else{
		print OUT1 "$fields[9]\t$fields[13]\t$fields[16]\t$ts{$fields[9]}\t$tl{$fields[9]}\n";
	}
}
close IN2;

