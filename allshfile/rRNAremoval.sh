#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 48:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python

cd /proj/b2013028/INBOX/private/denocalm

#for i in treat_1h_rep1 treat_1h_rep2 treat_1h_rep3 treat_1h_rep4 treat_1h_rep5 treat_1h_rep6 treat_1h_rep7 control_1h_rep1 control_1h_rep2 control_1h_rep3 control_1h_rep4 control_1h_rep5 \
#control_1h_rep6 control_1h_rep7 treat_4h_rep1 treat_4h_rep2 treat_4h_rep3 treat_4h_rep4 control_4h_rep1 control_4h_rep2 control_4h_rep3 control_4h_rep4 control_4h_rep5 treat_12h_rep1 \
#treat_12h_rep2 control_12h_rep1 control_12h_rep2 treat_24h_rep1 treat_24h_rep2 treat_24h_rep3 control_24h_rep1 control_24h_rep2 control_24h_rep3 control_24h_rep4

for i in control_12h_rep1 control_12h_rep2 treat_12h_rep1 treat_12h_rep2

do
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/scripts/merge-paired-reads.sh /proj/b2013028/INBOX/private/calmallraw/"$i".1.fastq /proj/b2013028/INBOX/private/calmallraw/"$i".2.fastq /proj/b2013028/INBOX/private/denocalm/"$i"merge.fq
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/sortmerna --ref /proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-bac-16s-id90.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-bac-16s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-bac-23s-id98.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-bac-23s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-arc-16s-id95.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-arc-16s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-arc-23s-id98.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-arc-23s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-euk-18s-id95.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-euk-18s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/silva-euk-28s-id98.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/silva-euk-28s:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/rfam-5s-database-id98.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/rfam-5s-db:\
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/rRNA_databases/rfam-5.8s-database-id98.fasta,/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/index/rfam-5.8s-db --reads /proj/b2013028/INBOX/private/denocalm/"$i"merge.fq --num_alignments 1 --fastx --aligned "$i"rRNA.fq --other "$i"_non_rRNA --log -a 16 -m 64000 --paired_in -v
/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/rRNAremoval/sortmerna-2.1/scripts/unmerge-paired-reads.sh "$i"_non_rRNA.fq "$i"_non_rRNA_1.fq "$i"_non_rRNA_2.fq
rm "$i"merge.fq
rm "$i"_non_rRNA.fq
gzip "$i"_non_rRNA_2.fq
gzip "$i"_non_rRNA_1.fq
done
