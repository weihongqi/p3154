#https://github.com/astatham/splitSNP/blob/master/splitSNP.py

/usr/local/ngseq/src/splitSNP/splitSNP.py 6.sorted.bam A128 pUASattB_Ptp69D_mcherry:10782:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 6.sorted.bam A129 pUASattB_Ptp69D_mcherry:10783:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 6.sorted.bam A297 pUASattB_Ptp69D_mcherry:10951:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 6.sorted.bam A298 pUASattB_Ptp69D_mcherry:10952:A:G
/usr/local/ngseq/src/splitSNP/splitSNP.py 6.sorted.bam A389 pUASattB_Ptp69D_mcherry:11043:A:G

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
