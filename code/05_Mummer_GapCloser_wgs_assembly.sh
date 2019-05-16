# run in the command line

module load bioinfo-tools
module load MUMmer

# picture for assembly quality

nucmer --prefix soap /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/sel3_NW_015504249.fna /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/GapCloser_output.fasta

mummerplot --png --layout --filter -p soap soap.delta -R /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/sel3_NW_015504249.fna -Q /home/igobazov/IB_paper_2/analysis/02_wgs_assembly/GapCloser/GapCloser_output.fasta 
