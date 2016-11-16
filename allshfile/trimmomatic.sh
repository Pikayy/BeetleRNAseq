#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 72:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load trinity

cd /proj/b2013028/nobackup/private/denopus

for i in Y107 Y108 Y117 Y118 Y119 Y127 Y128 Y129 Y130 Y131

do java -Xmx1G -jar /sw/apps/bioinfo/trimmomatic/0.32/milou/trimmomatic-0.32.jar PE -phred33 -threads 4 -trimlog logfile \
/home/xuyue/beetle/rRNAremoval/"$i"_non_rRNA_1.fq.gz /home/xuyue/beetle/rRNAremoval/"$i"_non_rRNA_1.fq.gz "$i"_non_rRNA_1.fq.gz.P.qtrim.gz "$i"_non_rRNA_1.fq.gz.U.qtrim.gz \
 "$i"_non_rRNA_2.fq.gz.P.qtrim.gz "$i"_non_rRNA_2.fq.gz.U.qtrim.gz ILLUMINACLIP:/home/xuyue/beetle/rRNAremoval/TruSeq_adapters.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:50

done
