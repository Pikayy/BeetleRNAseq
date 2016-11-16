#!/bin/bash

#SBATCH -A b2013028
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH --mail-user=xuyue.yang@su.se
#SBATCH --mail-type=ALL

module load python
module load bioinfo-tools
module load bowtie2
module load trinity/2.1.0
module load rsem
module load samtools
moudle load R

cd /proj/b2013028/INBOX/private/calm51500rsem
#cd /proj/b2013028/INBOX/private/rsem500

perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/abundance_estimates_to_matrix.pl --est_method RSEM treat_1h_rep1.genes.results treat_1h_rep2.genes.results treat_1h_rep3.genes.results treat_1h_rep4.genes.results treat_1h_rep5.genes.results treat_1h_rep6.genes.results treat_1h_rep7.genes.results control_1h_rep1.genes.results control_1h_rep2.genes.results control_1h_rep3.genes.results control_1h_rep4.genes.results control_1h_rep5.genes.results control_1h_rep6.genes.results control_1h_rep7.genes.results treat_4h_rep1.genes.results treat_4h_rep2.genes.results treat_4h_rep3.genes.results treat_4h_rep4.genes.results control_4h_rep1.genes.results control_4h_rep2.genes.results control_4h_rep3.genes.results control_4h_rep4.genes.results control_4h_rep5.genes.results treat_12h_rep1.genes.results treat_12h_rep2.genes.results control_12h_rep1.genes.results control_12h_rep2.genes.results treat_24h_rep1.genes.results treat_24h_rep2.genes.results treat_24h_rep3.genes.results control_24h_rep1.genes.results control_24h_rep2.genes.results control_24h_rep3.genes.results control_24h_rep4.genes.results --out_prefix calm51500


#perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/abundance_estimates_to_matrix.pl --est_method RSEM puspX107.genes.results puspX117.genes.results puspX127.genes.results puspX129.genes.results puspY107.genes.results puspY117.genes.results puspY127.genes.results puspY129.genes.results puspX108.genes.results puspX118.genes.results puspX128.genes.results puspX130.genes.results puspY108.genes.results puspY118.genes.results puspY128.genes.results puspY130.genes.results puspX119.genes.results puspX131.genes.results puspY119.genes.results puspY131.genes.results puspX6109.genes.results puspX6110.genes.results puspX6132.genes.results puspX8104.genes.results puspX8108.genes.results puspX8112.genes.results puspX8103.genes.results puspX8107.genes.results puspX8111.genes.results --out_prefix pus500
