#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL


#cd /proj/b2013028/INBOX/private/pcacalm/
cd /proj/b2013028/INBOX/private/pcapus/

#within samples
/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/rsem500/pus500.counts.matrix --samples /proj/b2013028/INBOX/private/pcapus/pus.txt --CPM --log2 --compare_replicates

#/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/pcacalm/calm51500.counts.matrix --samples /proj/b2013028/INBOX/private/pcacalm/calm.txt --CPM --log2 --compare_replicates

#between samples
/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/rsem500/pus500.counts.matrix -s /proj/b2013028/INBOX/private/pcapus/pus.txt --log2 --sample_cor_matrix #pus

#/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/pcacalm/calm51500.counts.matrix -s /proj/b2013028/INBOX/private/pcacalm/calm.txt --log2 --sample_cor_matrix

#PCA use normalized data
/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/rsem500/pus500.TMM.EXPR.matrix -s /proj/b2013028/INBOX/private/pcapus/pustime.txt --log2 --prin_comp 3 --output lanetmmtime #prin_comp 4 means print out 4 PCs, can always change
    
#/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/pcacalm/calm51500.TMM.EXPR.matrix -s /proj/b2013028/INBOX/private/pcacalm/calm.txt --log2 --prin_comp 3 --output calmtmm

#/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/pcacalm/calm51500.TMM.EXPR.matrix -s /proj/b2013028/INBOX/private/pcacalm/calmlane.txt --log2 --prin_comp 3 --output calmtmmlane

#/sw/apps/bioinfo/trinity/2.1.0/milou/Analysis/DifferentialExpression/PtR --matrix /proj/b2013028/INBOX/private/pcacalm/calm51500.TMM.EXPR.matrix -s /proj/b2013028/INBOX/private/pcacalm/calmtime.txt --log2 --prin_comp 3 --output calmtmmtime
