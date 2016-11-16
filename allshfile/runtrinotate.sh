#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 1-00:00:00

module load python
module load bioinfo-tools
module load trinity
module load blast/2.2.31+
module load cd-hit

cd /proj/b2013028/INBOX/private/annotation

#/sw/apps/bioinfo/trinity/2.1.0/milou/util/support_scripts/get_Trinity_gene_to_trans_map.pl /proj/b2013028/INBOX/private/annotation/pustrinity51500.fasta > Pus_Trinity.fasta.gene_trans_map
/proj/b2013028/nobackup/xuyue/gene_annotation/Trinotate-3.0.1/auto/autoTrinotate.pl --Trinotate_sqlite /proj/b2013028/nobackup/xuyue/gene_annotation/Trinotate.sqlite\
 --transcripts /proj/b2013028/INBOX/private/annotation/pustrinity51500.fasta --gene_to_trans_map /proj/b2013028/INBOX/private/annotation/Pus_Trinity.fasta.gene_trans_map --conf /proj/b2013028/nobackup/xuyue/gene_annotation/conf.txt --CPU 12
