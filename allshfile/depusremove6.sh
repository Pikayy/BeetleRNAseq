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

cd /proj/b2013028/INBOX/private/denopus

Trinity --seqType fq --max_memory 30G --left /home/xuyue/beetle/rRNAremoval/X8103_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8104_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8107_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8108_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8111_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8112_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X107_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y107_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X108_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y108_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X117_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y117_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X118_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y118_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X119_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y119_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X127_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y127_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X128_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y128_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X129_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y129_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X130_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y130_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y131_non_rRNA_1.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X131_non_rRNA_1.fq.gz, \
--right /home/xuyue/beetle/rRNAremoval/X8103_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8104_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8107_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8108_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8111_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X8112_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X107_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y107_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X108_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y108_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X117_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y117_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X118_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y118_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X119_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y119_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X127_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y127_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X128_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y128_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X129_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y129_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X130_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y130_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/Y131_non_rRNA_2.fq.gz,\
/home/xuyue/beetle/rRNAremoval/X131_non_rRNA_2.fq.gz \
--CPU 16 --trimmomatic --quality_trimming_params "ILLUMINACLIP:/home/xuyue/beetle/rRNAremoval/TruSeq_adapters.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:50" --normalize_reads --normalize_by_read_set --output trinity.pus.a1


