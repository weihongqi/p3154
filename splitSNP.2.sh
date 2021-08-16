/usr/local/ngseq/src/splitSNP/splitSNP.py 2.sorted.bam A128 pUASattB__Kaede_Ptp69D3_prime_UTR:6112:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 2.sorted.bam A129 pUASattB__Kaede_Ptp69D3_prime_UTR:6113:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 2.sorted.bam A297 pUASattB__Kaede_Ptp69D3_prime_UTR:6281:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 2.sorted.bam A298 pUASattB__Kaede_Ptp69D3_prime_UTR:6282:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 2.sorted.bam A389 pUASattB__Kaede_Ptp69D3_prime_UTR:6373:A:G

samtools view -F 4 A128.alt.G.bam | cut -f1 | sort -u > A128_G_reads.txt      
samtools view -F 4 A129.alt.G.bam | cut -f1 | sort -u > A129_G_reads.txt      
samtools view -F 4 A297.alt.G.bam | cut -f1 | sort -u > A297_G_reads.txt 
samtools view -F 4 A298.alt.G.bam | cut -f1 | sort -u > A298_G_reads.txt 
samtools view -F 4 A389.alt.G.bam | cut -f1 | sort -u > A389_G_reads.txt 
samtools view -F 4 A128.ref.A.bam | cut -f1 | sort -u > A128_A_reads.txt      
samtools view -F 4 A129.ref.A.bam | cut -f1 | sort -u > A129_A_reads.txt      
samtools view -F 4 A297.ref.A.bam | cut -f1 | sort -u > A297_A_reads.txt
samtools view -F 4 A298.ref.A.bam | cut -f1 | sort -u > A298_A_reads.txt
samtools view -F 4 A389.ref.A.bam | cut -f1 | sort -u > A389_A_reads.txt
