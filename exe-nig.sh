#!/bin/sh
#$ -S /bin/sh
#$ -t 1-24
#$ -tc 24
#$ -l s_vmem=4G -l mem_req=4G
#$ -cwd
#$ -o $HOME/hg38/error_output
#$ -e $HOME/hg38/error_output

chr_num=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y M)

## This is a script for converting sequences to physical properties
## Please download hg19 before running this script

## tetra nucleotide step parameters ----
DPPs/exe/tetra/convert_tetra hg38/chr1$chr_num.fa DPPs/exe/tetra/Packer.txt chr$chr_num

## tri nucleotide step parameters ---
DPPs/exe/tir/convert_tri hg38/chr1$chrii.fa DPPs/exe/tri/Bruckner.txt chr$chrii


## di nucleotide step parameters --
# DNA_bending_stiffness
DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/DNA_bending_stiffness.txt chr$chrii



# DNA_denaturation
cd DPPs/DNA_denaturation
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/DNA_denaturation.txt chr$chrii
done


# Duplex_disrupt_energy
cd DPPs/Duplex_disrupt_energy
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Duplex_disrupt_energy.txt chr$chrii
done


# Duplex_free_energy
cd DPPs/Duplex_free_energy
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Duplex_free_energy.txt chr$chrii
done

# Protein_induced_deformability_Bp
cd DPPs/Protein_induced_deformability_Bp
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Protein_induced_deformability_Bp.txt chr$chrii
done

# Stabilizing_energy_of_Z_DNA_AS
cd DPPs/Stabilizing_energy_of_Z_DNA_AS
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Stabilizing_energy_of_Z_DNA_AS.txt chr$chrii
done

# Stabilizing_energy_of_Z_DNA_SA
cd DPPs/Stabilizing_energy_of_Z_DNA_SA
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Stabilizing_energy_of_Z_DNA_SA.txt chr$chrii
done

# Stacking_energy
cd DPPs/Stacking_energy
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/Stacking_energy.txt chr$chrii
done
