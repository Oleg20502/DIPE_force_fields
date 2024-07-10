#!/bin/bash

FF=CHARMM
for i in visc_nvt dens_npt
do
cd ${i}
rm * -r
mkdir 303.15
cd 303.15/
cp ~/DIPE_2/${FF}/${i}/303.15/*mdp .
mkdir s0
cd s0/
cp ~/DIPE_2/${FF}/${i}/303.15/s0/*gro .
cp ~/DIPE_2/${FF}/${i}/303.15/s0/*mdp .
cd ../../../
done

#for dir in ~/DIPE_2/CHARMM/visc_nvt/303.15
#do
#    
#    rsync -rtvz --include="s0/" --include="*.gro" --include="*.mdp" --exclude="*" ${dir} . --progress
#done

