#!/bin/bash
#SBATCH --job-name=DTOL_repeatmodeler
#SBATCH --output=DTOL_synt.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=50gb
#SBATCH --time=124:00:00
module load blobtools/1.0
blobtools create -i Nivi.curated.FINAL.fa -b Nivi.curated.aln.sorted.bam -t Nivi_final_megablast.nt --nodes /blue/andrew.mongue/raw_data/NCBI_data/data/nodes.dmp --names /blue/andrew.mongue/raw_data/NCBI_data/data/names.dmp -o Nivi_curated_blob_result
