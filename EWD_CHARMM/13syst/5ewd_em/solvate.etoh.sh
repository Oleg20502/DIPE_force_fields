#!/bin/bash

cp ../wd_topol.top ../ewd_topol.tmp.top
gmx editconf -f ../4wd_npt/confout.gro -o tmp.gro -c -box 10.31549   7.05285   7.37579
gmx solvate -cp tmp.gro -cs ../../syst_data/etoh.gro -p ../ewd_topol.tmp.top -o e_w_d.gro
rm tmp.gro
rm ../#ewd_topol.tmp.top.1#
