#!/bin/bash
for f in `ls ./M145GSNO/*.fastq.gz | sed 's/.fastq.gz//g' | sort -u`
do
hisat2 -x Sco_genome -U ${f}.fastq.gz --no-spliced-alignment --rna-strandness R | samtools sort -o ${f}_mapped.bam


#tee >(samtools flagstat - > ${f}_mapped.flagstat) | \
#samtools sort -O BAM | \
#tee ${f}_mapped.bam | \
#samtools index - ${f}_mapped.bam.bai
done

#| samtools sort -o $f_sorted.bam
