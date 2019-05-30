#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J maker_round_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user igor.bazov.0613@student.uu.se

# Load modules
module load bioinfo-tools
module load maker

# Your commands
cd /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/ 
maker
