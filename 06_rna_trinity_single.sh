#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J trinity_single
#SBATCH --mail-type=ALL
#SBATCH --mail-user Igor.Bazov.0613@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.8.2
module load samtools/1.9
module load jellyfish/2.2.6
module load Salmon/0.9.1
module load bowtie2/2.3.4.3

Trinity --seqType fq --max_memory 10G \
--single \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_2U.fastq.gz \
--output /home/igobazov/IB_paper_2/analysis/03_rna_assembly/rna_trinity_single
