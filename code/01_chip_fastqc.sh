#!/bin/bash

for i in /home/igobazov/IB_paper_2/data/chip_seq_sel3/*.fastq.gz

do
    fastqc -t 2 -o . $i
done
