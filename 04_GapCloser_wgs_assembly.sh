#!/bin/bash -L

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 32:00:00
#SBATCH -j sel3_wgs_gapcloser
#SBATCH --mail-type=ALL
#SBATCH --mail-user Igor.Bazov.0613@student.uu.se

# load modules

module load bioinfo-tools
module load soapdenovo/2.04-r240

# command

GapCloser -b /home/igobazov/IB_paper_2/code/soapdenovo.config -a /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/wgs_assembly/sel3_wgs_assembly.scafSeq -o /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/GapCloser_output.fasta
