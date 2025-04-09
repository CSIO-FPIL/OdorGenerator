#!/bin/bash
#
#SBATCH --partition=rosie
#SBATCH --job-name=1.move
#SBATCH --output=/home/rosie/daemons/rosetta-2.f/J/33255.00/%x.%a.output
#
#SBATCH --time=1440:00
#SBATCH --mem-per-cpu=3900M
#SBATCH --chdir=/home/rosie/daemons/rosetta-2.f/J/33255.00
#
#SBATCH --array=0-0
#
#SBATCH 

srun /home/rosie/daemons/rosetta-2.f/J/33255.00/.1.move.shell-wrapper.sh
