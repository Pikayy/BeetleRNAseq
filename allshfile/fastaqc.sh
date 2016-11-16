#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load FastQC/0.11.5
module load MultiQC/0.8


#for i in /proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/allpus/*.gz
#do fastqc $i -o /proj/b2013028/nobackup/xuyue/gene_annotation/longestpus/allpus/fastqc/
#done

for i in /proj/b2013028/INBOX/private/denocalm/trinitycalm/trinity.calm.a1/*.gz
do fastqc $i -o /proj/b2013028/INBOX/private/fastqccalm
done

multiqc /proj/b2013028/INBOX/private/fastqccalm
