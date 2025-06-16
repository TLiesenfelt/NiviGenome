#!/bin/bash
#SBATCH --job-name=blobplot.cur.view
#SBATCH --output=blobplot.cur.view.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=50gb
#SBATCH --time=124:00:00
module load blobtools/1.0
blobtools plot \
-i Nivi_curated_blob_result.blobDB.json  -o blob.cur.vew
