#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J htseq_counts_by_stage
#SBATCH --mail-type=ALL
#SBATCH --mail-user Igor.Bazov.0613@student.uu.se


# Load modules
module load bioinfo-tools
module load htseq

# cs15 forelimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs15_fore/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs15_fore_htseq_count.txt

# cs16 forelimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs16_fore/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs16_fore_htseq_count.txt

# cs17 forelimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs17_fore/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs17_fore_htseq_count.txt

# cs15 hindlimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs15_hind/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs15_hind_htseq_count.txt

# cs16 hindlimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs16_hind/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs16_hind_htseq_count.txt

# cs17 hindlimb

htseq-count -f bam -s no -t gene -i ID /home/igobazov/IB_paper_2/analysis/05_mapping/cs17_fore/accepted_hits.bam /home/igobazov/IB_paper_2/analysis/04_genome_annotation/maker_round_1/sel3_NW_015504249.maker.output/sel3_NW_015504249_datastore/31/BC/NW_015504249.1/NW_015504249%2E1.nofasta.gff > /home/igobazov/IB_paper_2/analysis/06_count/cs17_hind_htseq_count.txt
