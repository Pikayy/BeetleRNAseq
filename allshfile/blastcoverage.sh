#!/bin/bash -l

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2-00:00:00


module load python
module load bioinfo-tools
module load trinity

cd /proj/b2013028/INBOX/P.Hamback_15_01/

/sw/apps/bioinfo/trinity/2.1.0/milou/util/analyze_blastPlus_topHit_coverage.pl blastx.outfmt6 newcalm_Trinity.fasta uniprot_sprot.fasta
