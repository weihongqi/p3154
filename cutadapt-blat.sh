CONDA_BASE=$(conda info --base)
source ${CONDA_BASE}/etc/profile.d/conda.sh
conda activate cutadapt
module load Tools/UCSC/399

SAMPLES=$(ls lima_output.*.bam.Q20.fastq)
for IFILE in ${SAMPLES[@]}
do
    PRE=$(echo $IFILE|sed 's/.bam.Q20.fastq//g')
    NAME=$(echo $PRE|sed 's/^lima_output.//g')
    cutadapt -a CAGCTGTAGCTATGCGCA -O 9 --rc -o $NAME\.cutadapt.fastq  --untrimmed-output $NAME\.no_adapt.fastq --info-file $NAME\.cutadapt.txt $IFILE
    #cutadapt -a "A{500}" -e 0.01 -O 1 --untrimmed-output $NAME\.no_tail.fastq --info-file $NAME\.tails.txt -o $NAME\.trimtail.fastq --fasta $NAME\.cutadapt.fastq
    cutadapt -a "A{500}" -e 0.01 -O 1 --info-file $NAME\.tails.txt -o $NAME\.trimtail.fastq $NAME\.cutadapt.fastq
    /usr/local/ngseq/packages/Tools/EMBOSS/6.6.0/bin/seqret $NAME\.trimtail.fastq $NAME\.trimtail.fasta
    blat -t=DNA -q=RNA /srv/GT/analysis/qiwei/p3154/o6676_FLAMseq/dmel_r6.32_FB2020_01/dmel-all-gene-r6.32.fasta  $NAME\.trimtail.fasta  $NAME\.trimtail.psl
    pslCDnaFilter -globalNearBest=0  $NAME\.trimtail.psl  $NAME\.trimtail.best.psl 
    pslCDnaFilter -uniqueMapped $NAME\.trimtail.best.psl $NAME\.trimtail.best.unique.psl
done
