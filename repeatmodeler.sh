#!/bin/bash
#SBATCH --job-name=Nivi_repeatmodeler
#SBATCH --output=Nivi_repeatmodeler.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=38
#SBATCH --mem=100gb
#SBATCH --time=124:00:00
module load repeatmodeler
BuildDatabase -engine ncbi -name Nipaecoccus_viridis /blue/andrew.mongue/tliesenfelt/HiC/Nivi.curated.FINAL.decontaiminated.fa
RepeatModeler -database Nipaecoccus_viridis -pa 38 -LTRStruct
