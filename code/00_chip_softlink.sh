#!/bin/bash

for i in /proj/g2019003/nobackup/private/2_Eckalbar_2016/sel3/chip_seq_data/*.fastq.gz

do
    ln -s $i .
done
