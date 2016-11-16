#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 1-00:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

PATH=$PATH:/proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/buscocalm

module load python/3.4.3
module load bioinfo-tools
module load blast/2.2.31+
module load emboss/6.5.7


export PATH=$PATH:/proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/hmmer-3.1b2-linux-intel-x86_64/binaries

cd /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/buscocalm/
#calm

#python /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/BUSCO_v1.22.py -o buscocalmhighest500 -in /proj/b2013028/INBOX/private/trinityfilter/calmhighest500.fasta -l /proj/b2013028/INBOX/private/denopus/arthropoda -m trans

#python /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/BUSCO_v1.22.py -o buscocalm51500 -in /proj/b2013028/INBOX/private/trinityfilter/calm51500.fasta -l /proj/b2013028/INBOX/private/denopus/arthropoda -m trans

#pus
#python /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/BUSCO_v1.22.py -o buscopushighest -in /proj/b2013028/INBOX/private/trinityfilter/pushighest.fasta -l /proj/b2013028/INBOX/private/denopus/arthropoda -m trans

#python /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/BUSCO_v1.22.py -o buscopushighest500 -in /proj/b2013028/INBOX/private/trinityfilter/pushighest500.fasta -l /proj/b2013028/INBOX/private/denopus/arthropoda -m trans


#Trinity500.fasta #filtered the length also
#Trinity51.fasta #filter redundency
#/proj/b2013028/nobackup/private/denopus/trinity.pus.a1/Trinity.fasta #denovoed pus
#

for i in longestisocalm500 longestisopus500 longestisocalm400 longestisopus400

do python /proj/b2013028/INBOX/private/denopus/BUSCO_v1.22/BUSCO_v1.22.py -o busco"$i" -in /proj/b2013028/INBOX/private/trinityfilter/new/"$i".fasta -l /proj/b2013028/INBOX/private/denopus/arthropoda -m trans

done
