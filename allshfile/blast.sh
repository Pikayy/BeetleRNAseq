#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 1-00:00:00
#SBATCH -e calm101.err

module load python
module load bioinfo-tools
module load blast/2.2.31+

cd /proj/b2013028/INBOX/P.Hamback_15_01/

/sw/apps/bioinfo/blast/2.2.31+/milou/bin/makeblastdb -in /proj/b2013028/INBOX/P.Hamback_15_01/uniprot_sprot.fasta -dbtype prot
/sw/apps/bioinfo/blast/2.2.31+/milou/bin//blastx -query /proj/b2013028/INBOX/P.Hamback_15_01/newcalm_Trinity.fasta -db /proj/b2013028/INBOX/P.Hamback_15_01/uniprot_sprot.fasta -out blastx.outfmt6 \
 -evalue 1e-20 -num_threads 6 -max_target_seqs 1 -outfmt 6 &> logblastcalm.txt
