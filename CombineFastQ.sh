#!/bin/bash

#for f in `ls *.fastq.gz | sed 's/.fastq.gz//g' | sort -u`
for f in `ls *.fastq.gz | cut -d'_' -f 1 | sort -u`
do
zcat ${f}*.fastq.gz | gzip > ${f}_merged.fastq.gz
done