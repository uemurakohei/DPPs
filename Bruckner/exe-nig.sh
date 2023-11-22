#!/bin/sh
#$ -S /bin/sh
#$ -t 1-24
#$ -tc 24
#$ -l s_vmem=16G -l mem_req=16G
#$ -cwd
#$ -o $HOME/DPP_hg38
#$ -e $HOME/DPP_hg38

chr_num=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y M)

## tri nucleotide step parameters ---
$HOME/DPP_hg38/exe/tir/convert_tri $HOME/hg38/chr1${chr_num}.fa $HOME/DPP_hg38/exe/tri/Bruckner.txt chr${chr_num}
