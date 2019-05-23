#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat_all_reads_by_stage
#SBATCH --mail-type=ALL
#SBATCH --mail-user Igor.Bazov.0613@student.uu.se

# Load modules
module load bioinfo-tools
module load tophat

bowtie2-build -f /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/sel3_NW_015504249.fna /home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref

# cs15 forelimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs15_fore \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719013.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719014.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719015.trim_2U.fastq.gz

# cs16 forelimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs16_fore \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719204.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719206.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719207.trim_2U.fastq.gz

# cs17 forelimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs17_fore \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719208.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719209.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719211.trim_2U.fastq.gz

# cs15 hindlimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs15_hind \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719016.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719017.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719018.trim_2U.fastq.gz

# cs16 hindlimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs16_hind \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719212.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719214.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719242.trim_2U.fastq.gz

# cs17 hindlimb
tophat -o /home/igobazov/IB_paper_2/analysis/05_mapping/cs17_hind \
/home/igobazov/IB_paper_2/analysis/05_mapping/bowtie/sel3_ref \
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_1P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.1FP.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_2P.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.2FP.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_1U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.1FU.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719213.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_trim/sel3_SRR1719241.trim_2U.fastq.gz,\
/home/igobazov/IB_paper_2/data/rna_seq_sel3/rna_raw/sel3_SRR1719266.2FU.fastq.gz

