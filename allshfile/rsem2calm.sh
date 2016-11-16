#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 48:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load bowtie2
module load trinity/2.1.0
module load rsem
module load samtools

for i in treat_1h_rep1 treat_1h_rep2 treat_1h_rep3 treat_1h_rep4 treat_1h_rep5 treat_1h_rep6 treat_1h_rep7 control_1h_rep1 control_1h_rep2 control_1h_rep3 \
control_1h_rep4 control_1h_rep5 control_1h_rep6 control_1h_rep7 treat_4h_rep1 treat_4h_rep2 treat_4h_rep3 treat_4h_rep4 control_4h_rep1 control_4h_rep2 \
control_4h_rep3 control_4h_rep4 control_4h_rep5 treat_12h_rep1 treat_12h_rep2 control_12h_rep1 control_12h_rep2 treat_24h_rep1 treat_24h_rep2 treat_24h_rep3 \
control_24h_rep1 control_24h_rep2 control_24h_rep3 control_24h_rep4

#for i in treat_1h_rep2 treat_1h_rep4 treat_1h_rep6 control_1h_rep2 control_1h_rep4 control_1h_rep6 treat_4h_rep2 control_4h_rep2 control_4h_rep4 treat_24h_rep2 control_24h_rep2 control_24h_rep4

#do perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/align_and_estimate_abundance.pl --transcripts /proj/b2013028/INBOX/private/trinityfilter/calm51500.fasta \
#--seqType fq --left /proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/"$i"_non_rRNA_1.fq.gz.P.qtrim.gz \
#--right /proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/"$i"_non_rRNA_2.fq.gz.P.qtrim.gz --est_method RSEM --aln_method bowtie2 \
#--prep_reference --output_dir /proj/b2013028/INBOX/private/calm51500rsem --output_prefix "$i"

do perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/align_and_estimate_abundance.pl --transcripts /proj/b2013028/INBOX/private/trinityfilter/new/longestisocalm500.fasta \
--seqType fq --left /proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/"$i"_non_rRNA_1.fq.gz.P.qtrim.gz \
--right /proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/"$i"_non_rRNA_2.fq.gz.P.qtrim.gz --est_method RSEM --aln_method bowtie2 \
--prep_reference --output_dir /proj/b2013028/INBOX/private/calmlongestiso500rsem --output_prefix "$i"

done

#sbatch /proj/b2013028/INBOX/private/allshfile/matrix2.sh
#/sw/apps/bioinfo/trinity/2.1.0/milou
#/proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/bowtieandrsem/align_and_estimate_abundance.pl #uniquly mapping
#/proj/b2013028/INBOX/private/trinityfilter/calmhighest500.fasta
#/proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/Trinity.fasta
