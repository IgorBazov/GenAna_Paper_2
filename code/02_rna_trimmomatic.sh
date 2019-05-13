#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J run_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user igor.bazov.0613@student.uu.se

# load modules

module load bioinfo-tools
module load trimmomatic

# commands

java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 

/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.1.fastq.gz

/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.2.fastq.gz


#
#
#


ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
