#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 72:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load trinity

cd /proj/b2013028/nobackup/private/denopus

Trinity --seqType fq --max_memory 30G --left /home/xuyue/beetle/rRNAremoval/Y107_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y108_non_rRNA_1.fq.gz --right /home/xuyue/beetle/rRNAremoval/Y107_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y108_non_rRNA_2.fq.gz \
--CPU 16 --trimmomatic --quality_trimming_params "ILLUMINACLIP:/home/xuyue/beetle/rRNAremoval/TruSeq_adapters.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:50" --normalize_reads --normalize_by_read_set --output trinity.pus.a1

cd /proj/b2013028/INBOX/private/rsem
sbatch rsem3.sh
