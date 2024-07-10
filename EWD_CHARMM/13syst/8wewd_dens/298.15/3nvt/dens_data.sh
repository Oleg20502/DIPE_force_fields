#!/bin/bash

id=1
N=100
S=50
nbins=65
mkdir -p dens_${id}/
cd dens_${id}/

for ((i = 0; i < ${N}; i++))
do
    let "b = i * S"
    let "e = b + S"
    gmx density -f ../traj.trr -s ../topol.tpr -o m.${e}.${nbins}.dipe.xvg -b ${b} -e ${e} -d X -sl ${nbins} -dens mass <<< 2
    gmx density -f ../traj.trr -s ../topol.tpr -o m.${e}.${nbins}.h2o.xvg -b ${b} -e ${e} -d X -sl ${nbins} -dens mass <<< 4
    gmx density -f ../traj.trr -s ../topol.tpr -o m.${e}.${nbins}.etoh.xvg -b ${b} -e ${e} -d X -sl ${nbins} -dens mass <<< 3
    echo ${e}
done
