##Look for enriched TF motifs in ERVs when compared to a shuffled control
##Uses AME tool from MEME and the HOCOMOCO v11 database
##Input are fasta files separated by family
##Shuffled control was generated using the fasta-dinucleotide-shuffle tool

database=~/Documents/motif_databases/HUMAN/HOCOMOCOv11_core_HUMAN_mono_meme_format.meme

for te in LTR2B LTR2C LTR5B LTR5_Hs LTR12C LTR13A; do
	ame --control ../TF_motifs/fasta_files/${te}_shuf.fa --o ${te}_hocomoco ../TF_motifs/fasta_files/${te}_hg38.fa $database
done
