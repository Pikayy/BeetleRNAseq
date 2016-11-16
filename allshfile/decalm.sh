#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 96:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load trinity

cd /proj/b2013028/INBOX/private/denocalm/trinitycalm

Trinity --seqType fq --max_memory 30G --left /proj/b2013028/INBOX/private/denocalm/treat_1h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep3_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep5_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep7_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep3_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep5_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep7_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep2_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep3_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep4_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep3_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep5_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_12h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_12h_rep2_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_12h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_12h_rep2_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_24h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_24h_rep3_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_24h_rep1_non_rRNA_1.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_24h_rep3_non_rRNA_1.fq.gz \
--right /proj/b2013028/INBOX/private/denocalm/treat_1h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep3_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep5_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_1h_rep7_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep3_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep5_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_1h_rep7_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep2_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep3_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_4h_rep4_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep3_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_4h_rep5_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_12h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_12h_rep2_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_12h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_12h_rep2_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_24h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/treat_24h_rep3_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_24h_rep1_non_rRNA_2.fq.gz,\
/proj/b2013028/INBOX/private/denocalm/control_24h_rep3_non_rRNA_2.fq.gz \
--CPU 16 --trimmomatic --quality_trimming_params "ILLUMINACLIP:/home/xuyue/beetle/rRNAremoval/TruSeq_adapters.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:50" --normalize_reads --normalize_by_read_set --output trinity.calm.a1


