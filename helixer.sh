#!/bin/bash
#SBATCH --job-name=Nivi_helixer
#SBATCH --output=Nivi_helixer.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gpus=a100:1
#SBATCH --partition gpu
#SBATCH --mem=50gb
#SBATCH --time=124:00:00

module load helixer

Helixer.py --subsequence-length 213840 --model-filepath /blue/andrew.mongue/andrew.mongue/Toli/3_Annotation/helixer/invertebrate_v0.3_a_0600.h5 --fasta-path /blue/andrew.mongue/tliesenfelt/HiC/Nivi.curated.FINAL.fa --species Nipaecoccus_viridis --gff-output-path /blue/andrew.mongue/tliesenfelt/HiC/Helixer/Nivi_helixer.gff3
