#!/bin/bash

for f in `ls ./M145GSNO/*mapped.bam |cut -d '_' -f 1 |  sort -u`
do

#echo $f
samtools merge $f.merged.bam $f*mapped.bam
done
