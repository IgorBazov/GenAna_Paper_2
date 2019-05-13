#!/bin/bash

for i in /home/igobazov/IB_paper_2/data/wgs_sel3/fastqc/*.fastq.gz

do
    fastqc -t 2 -o . $i 
done

