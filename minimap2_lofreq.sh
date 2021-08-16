#!/bin/bash
module load Aligner/minimap2/2.15r905 
module load Tools/samtools/1.11  

while IFS= read -r line; do
	IFS=" " read -r REF READ ID <<<"${line}"
	minimap2 -ax asm20 $REF $READ > $ID.sam 
	samtools view -O BAM -o $ID.bam $ID.sam
	samtools sort -O BAM -o $ID.sorted.bam $ID.bam
	samtools index $ID.sorted.bam
	rm $ID.sam
	rm $ID.bam
	/usr/local/ngseq/src/lofreq_star-2.1.2/bin/lofreq call -f $REF -o $ID.vcf $ID.sorted.bam
	bgzip $ID.vcf
	tabix -p vcf $ID.vcf.gz
done < "$1"
