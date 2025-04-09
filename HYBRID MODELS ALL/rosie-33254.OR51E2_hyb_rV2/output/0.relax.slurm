#!/bin/bash
#
#SBATCH --partition=rosie
#SBATCH --job-name=0.relax
#SBATCH --output=/home/rosie/daemons/rosetta-2.b/J/33254.00/%x.%a.output
#
#SBATCH --time=1440:00
#SBATCH --mem-per-cpu=3900M
#SBATCH --chdir=/home/rosie/daemons/rosetta-2.b/J/33254.00
#
#SBATCH --array=0-0
#
#SBATCH 

srun /home/rosie/daemons/rosetta-2.b/J/33254.00/.0.relax.shell-wrapper.sh
