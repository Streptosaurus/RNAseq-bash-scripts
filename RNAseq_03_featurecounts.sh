#!/bin/bash

#parallel --plus --dry-run  "hisat2 -x Sco_genome -U {} --no-spliced-alignment --rna-strandness R | samtools sort -o {=s/_1.fastq.gz//=}.hisat.sorted.bam" ::: *_1.fastq.gz

for f in `ls ./M145GSNO/*merged.bam`
do
featureCounts ${f} -t CDS -g transcript_id -a SCO_annotation_20200116.gtf -Q 3 -T 4 -s 2 -o ${f}_counts.txt

done

#featureCounts ${f} -t CDS -g transcript_id -a SCO_annotation_20200116.gtf -Q 3 -T 4 -s 2 -o ${f}_counts.txt
