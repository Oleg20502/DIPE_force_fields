# Diisopropyl ether. Force field comparison
Input and configurational files for GROMACS and LAMMPS from our work "Force field comparison for molecular dynamics simulations of liquid membranes" in Journal of Molecular Liquids

## Example of running simulations in LAMMPS (with COMPASS ff)

#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32

I=0
prun lmp -sf gpu -pk gpu 2 -in mdp_u.lmp -p 8x4 -v I ${I} >> out_${I}.txt

## Example of running simulations in GROMACS (with GAFF, OPLS, CHARMM ff)

#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

gmx grompp -f nvt.mdp -c ../npt/confout.gro -t /npt/state.cpt -p ../topol.top -o topol.tpr >> grmp.txt

mpirun gmx_mpi mdrun -v -gpu_id 0 -ntomp 2 -s topol.tpr

## Authors
* Oleg Kashurin - *Calculations, analysis of results, writing the text of the paper*
* Nikolay Kondratyuk - *Calculation methods, analysis of results, resources*
* Alexander Lankin - *Problem statement, analysis of results, literature review*
* Genri Norman - *Structure of the paper*
