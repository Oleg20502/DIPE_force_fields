#!/bin/bash

nbins=40

gmx density -f traj.trr -o mdens.${nbins}.dipe.xvg -d X -sl ${nbins} -dens mass <<< 2
#gmx density -f traj.trr -o ndens.${nbins}.dipe.xvg -d X -sl ${nbins} -dens number <<< 2
echo finished dipe

gmx density -f traj.trr -o mdens.${nbins}.h2o.xvg -d X -sl ${nbins} -dens mass <<< 4
#gmx density -f traj.trr -o ndens.${nbins}.h2o.xvg -d X -sl ${nbins} -dens number <<< 4
echo finished h2o
