#!/bin/bash
#SBATCH --job-name=earlgrey
#SBATCH -o earlgrey4.log
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH -t 99:00:00
#SBATCH -c 35
#SBATCH --mem=170gb
module load conda
conda activate earlgrey
module load R
earlGrey -d yes -l /blue/andrew.mongue/andrew.mongue/Repeat_libraries/Arthro.Hemip.Repbase.Epela.Ipurchasi.Pcitri.Gtillandsiai.Tliriodendri.Nviridis.combined.October.2024.fa -g /blue/andrew.mongue/tliesenfelt/HiC/Nivi.curated.FINAL.decontaiminated.fa -s Nipaecoccus_viridis -t 35 -o /blue/andrew.mongue/tliesenfelt/HiC/Repeat.masking.decontaminated/

