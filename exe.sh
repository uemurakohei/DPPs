#!/bin/sh

## This is a script for converting sequences to physical properties
## Please download hg19 before running this script

## tetra nucleotide step parameters ----
cd DPPs/Packer
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/tetra/convert_tetra hg19/chr1$chrii.fa DPPs/exe/tetra/Packer.txt chr$chrii
done

## tri nucleotide step parameters ---
cd DPPs/Bruckner
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/tir/convert_tri hg19/chr1$chrii.fa DPPs/exe/tri/Bruckner.txt chr$chrii
done

## di nucleotide step parameters --
# DNA_bending_stiffness
cd DPPs/DNA_bending_stiffness
for chrii in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y
do
  DPPs/exe/di/convert_di hg19/chr$chrii.fa DPPs/exe/di/DNA_bending_stiffness.txt chr$chrii
done


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
