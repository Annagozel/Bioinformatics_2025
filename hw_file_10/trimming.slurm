#!/bin/bash
#SBATCH --job-name=trimming_job 
#SBATCH --output=trimming.out 
#SBATCH --error=trimming.err  
#SBATCH --time=02:00:00 
#SBATCH --mem=4G     
#SBATCH --cpus-per-task=2 
#SBATCH --nodes=1   
#SBATCH --ntasks-per-node=1     

module load java/1.8.0_60 

INPUT_R1="/projects/mipt_dbmp_biotechnology/genome/illumina_reads_R1_001.fastq"
INPUT_R2="/projects/mipt_dbmp_biotechnology/genome/illumina_reads_R2_001.fastq"
OUTPUT_R1="trimmed_reads/illumina_reads_R1_trimmed.fastq"
OUTPUT_R2="trimmed_reads/illumina_reads_R2_trimmed.fastq"

trimmomatic PE -phred33 $INPUT_R1 $INPUT_R2 $OUTPUT_R1 $OUTPUT_R1.unpaired $OUTPUT_R2 $OUTPUT_R2.unpaired SLIDINGWINDOW:4:20 MINLEN:36

fastqc $OUTPUT_R1 $OUTPUT_R2 -o fastqc_trimmed
