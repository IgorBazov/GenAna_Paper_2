#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J wgs_assembly_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user Igor.Bazov.0613@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Your commands
SOAPdenovo-127mer all -s /home/igobazov/IB_paper_2/code/soapdenovo.config -K 49 -R -o /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/wgs_assembly

