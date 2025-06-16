#!/bin/bash
#SBATCH --job-name=nivi_hifiasm
#SBATCH -o nivi_hifiasm.out
#SBATCH --mail-user=tliesenfelt@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH -c 22
#SBATCH --mem-per-cpu=10gb
#SBATCH -t 30:00:00

module load ufrc
module load hifiasm

hifiasm -o /blue/andrew.mongue/raw_data/NS3405_nivi_hifi/round_2/NS3405/1_E04/round_2_assembly/nivi_round_2_hifi -l 3 -t 22 /blue/andrew.mongue/raw_data/NS3405_nivi_hifi/NS3405/2_B03/m64219e_230818_225507.hifi_reads.fastq m64219e_230912_180329.hifi_reads.fastq
