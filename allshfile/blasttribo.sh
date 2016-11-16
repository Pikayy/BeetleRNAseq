#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 1-00:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load blast/2.2.31+

cd /proj/b2013028/INBOX/private/tribolium 

#/sw/apps/bioinfo/blast/2.2.31+/milou/bin/makeblastdb -in /proj/b2013028/INBOX/P.Hamback_15_01/uniprot_sprot.fasta -dbtype prot
#/sw/apps/bioinfo/blast/2.2.31+/milou/bin//blastx -query /proj/b2013028/INBOX/P.Hamback_15_01/newcalm_Trinity.fasta -db /proj/b2013028/INBOX/P.Hamback_15_01/uniprot_sprot.fasta -out blastx.outfmt6 \
#-evalue 1e-20 -num_threads 6 -max_target_seqs 1 -outfmt 6 &> logblastcalm.txt
#/sw/apps/bioinfo/blast/2.2.31+/milou/bin/makeblastdb -in uniprottriboliumnonmt.fasta -dbtype prot

/sw/apps/bioinfo/blast/2.2.31+/milou/bin//blastx -query /proj/b2013028/INBOX/private/trinityfilter/longestisocalm.fasta -db uniprottriboliumnonmt.fasta -out blastxtriboliso.outfmt6 \
 -evalue 1e-20 -num_threads 6 -max_target_seqs 1 -outfmt 6
 
/sw/apps/bioinfo/trinity/2.1.0/milou/util/analyze_blastPlus_topHit_coverage.pl /proj/b2013028/INBOX/private/tribolium/blastxtriboliso.outfmt6 /proj/b2013028/INBOX/private/trinityfilter/longestisocalm.fasta /proj/b2013028/INBOX/private/tribolium/uniprottriboliumnonmt.fasta
