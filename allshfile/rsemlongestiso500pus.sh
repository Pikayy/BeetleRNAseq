#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 72:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load bowtie2
module load trinity/2.1.0
module load rsem
module load samtools


for i in X107 X108 X117 X118 X119 X127 X128 X129 X130 X131 Y107 Y108 Y117 Y118 Y119 Y127 Y128 Y129 Y130 Y131 X6109 X6110 X6132 X8103 X8104 X8107 X8108 X8111 X8112

do perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/align_and_estimate_abundance.pl --transcripts /proj/b2013028/INBOX/private/trinityfilter/new/longestisopus500.fasta \
--seqType fq --left /proj/b2013028/nobackup/private/denopus/trinity.pus.a1/"$i"_non_rRNA_1.fq.gz.P.qtrim.gz \
--right /proj/b2013028/nobackup/private/denopus/trinity.pus.a1/"$i"_non_rRNA_2.fq.gz.P.qtrim.gz --est_method RSEM --aln_method bowtie2 \
--prep_reference --output_dir /proj/b2013028/INBOX/private/rsempuslongestiso500 --output_prefix pusp"$i"
done

#sbatch /proj/b2013028/INBOX/private/allshfile/matrix2.sh

