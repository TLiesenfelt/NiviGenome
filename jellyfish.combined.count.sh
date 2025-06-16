#!/bin/bash
#SBATCH --job-name=nivi_hifiasm
#SBATCH -o nivi_count.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH -c 22
#SBATCH -t 30:00:00
module load jellyfish
jellyfish count -m 21 -s 100M -t 22 -C /blue/andrew.mongue/raw_data/NS3405_nivi_hifi/NS3405/2_B03/m64219e_230818_225507.hifi_reads.fastq m64219e_230912_180329.hifi_reads.fastq
