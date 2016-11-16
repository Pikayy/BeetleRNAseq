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

#cd /proj/b2013028/INBOX/private/rsem #for pus
#perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/abundance_estimates_to_matrix.pl --est_method RSEM puspX107.isoforms.results puspX117.isoforms.results puspX127.isoforms.results puspX129.isoforms.results puspY107.isoforms.results puspY117.isoforms.results puspY127.isoforms.results puspY129.isoforms.results puspX108.isoforms.results puspX118.isoforms.results puspX128.isoforms.results puspX130.isoforms.results puspY108.isoforms.results puspY118.isoforms.results puspY128.isoforms.results puspY130.isoforms.results puspX119.isoforms.results puspX131.isoforms.results puspY119.isoforms.results puspY131.isoforms.results puspX6109.isoforms.results puspX6110.isoforms.results puspX6132.isoforms.results puspX8104.isoforms.results puspX8108.isoforms.results puspX8112.isoforms.results puspX8103.isoforms.results puspX8107.isoforms.results puspX8111.isoforms.results --out_prefix pusiso

cd /proj/b2013028/INBOX/private/calmrsem # for calm
perl /sw/apps/bioinfo/trinity/2.1.0/milou/util/abundance_estimates_to_matrix.pl --est_method RSEM treat_1h_rep1.isoforms.results treat_1h_rep2.isoforms.results treat_1h_rep3.isoforms.results treat_1h_rep4.isoforms.results treat_1h_rep5.isoforms.results treat_1h_rep6.isoforms.results treat_1h_rep7.isoforms.results control_1h_rep1.isoforms.results control_1h_rep2.isoforms.results control_1h_rep3.isoforms.results control_1h_rep4.isoforms.results control_1h_rep5.isoforms.results control_1h_rep6.isoforms.results control_1h_rep7.isoforms.results treat_4h_rep1.isoforms.results treat_4h_rep2.isoforms.results treat_4h_rep3.isoforms.results treat_4h_rep4.isoforms.results control_4h_rep1.isoforms.results control_4h_rep2.isoforms.results control_4h_rep3.isoforms.results control_4h_rep4.isoforms.results control_4h_rep5.isoforms.results treat_12h_rep1.isoforms.results treat_12h_rep2.isoforms.results control_12h_rep1.isoforms.results control_12h_rep2.isoforms.results treat_24h_rep1.isoforms.results treat_24h_rep2.isoforms.results treat_24h_rep3.isoforms.results control_24h_rep1.isoforms.results control_24h_rep2.isoforms.results control_24h_rep3.isoforms.results control_24h_rep4.isoforms.results --out_prefix calmiso

