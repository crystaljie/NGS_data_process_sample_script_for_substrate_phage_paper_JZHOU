#!/bin/bash
# the following scripts were used for converting the NGS raw data fastaq into readable files 
# bowtie2 for sequence alignment
# Samtools used for converting sam to bam file

for i in $( ls hP-*.gz ); 
do
    echo processing: $i
    ls $i
    gunzip $i
    j="${i%.*}"
    name1=$(echo $j| cut -d'_' -f 1)
    name2=$(echo $name1| cut -d'-' -f 3)
    /Users/jie/opt/anaconda3/pkgs/bowtie2-2.2.5-py37h04f5b5a_4/bin/bowtie2 -x /Users/jie/human_hp_ref -U $j -S $name2.sam 
    /Users/jie/opt/samtools-1.10/samtools view -S -b $name2.sam > $name2.bam
done
        



#!/bin/bash
for i in $( ls hP-*.fastq); 
do
    echo processing: $i
    ls $i
    j="${i%.*}"
    name1=$(echo $j| cut -d'_' -f 1)
    name2=$(echo $name1| cut -d'-' -f 3)
    /Users/jie/opt/anaconda3/pkgs/bowtie2-2.2.5-py37h04f5b5a_4/bin/bowtie2 -x /Users/jie/human_hp_ref -U $i -S $name2.sam 
    /Users/jie/opt/samtools-1.10/samtools view -S -b $name2.sam > $name2.bam
done
        




