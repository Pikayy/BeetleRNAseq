#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python

for i in /home/xuyue/beetle/rRNAremoval/*.fq
do gzip $i
done
