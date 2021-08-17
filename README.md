The RNA-binding protein Musashi controls axon compartment-specific synaptic
connectivity through ptp69D mRNA poly(A)-tailing

María Landínez-Macías, Weihong Qi, Anna Bratus-Neuenschwander, Martin Müller,
and Olivier Urwyler

## Reference sequences
*.fasta

## RNA editing analysis of PacBio CCS reads
input.txt: input configuration for minimap2_lofreq.sh

minimap2_lofreq.sh: align reads and variant calling

splitSNP.*.sh: split reads by variants in various input bam files

venn.R: venn diagram analysis of alleleic reads 

## FLAM-seq analysis pf PacBio CCS reads
cutadapt-blat.sh: adapter trimming, polyA tail identification using cutadpat and blat

get_map_tail.pl: combined analysis of polyA tails identified by cutadapt and blat

FLAM-seq.Rmd: clustering of reads into isoforms by polyA tails

![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5206822.svg?raw=true)

