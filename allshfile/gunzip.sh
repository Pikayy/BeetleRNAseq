#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 20:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python

#for i in /proj/b2013028/INBOX/P.Hamback_14_01/pus*/**/*.fastq.gz
#for i in /proj/b2013028/INBOX/P.Hamback_15_01/calm*/**/*.fastq.gz
#do gunzip $i
#done
for i in /proj/b2013028/INBOX/P.Hamback_15_01/calm*/X/*.fastq
do gzip $i
done
