#!/bin/bash

for i in /home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/*.fastq.gz

do
    fastqc -t 2 -o . $i
done
