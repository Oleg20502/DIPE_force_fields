#!/bin/bash

cp ../d_topol.top ../wd_topol.tmp.top
gmx editconf -f ../2dipe_npt/confout.gro -o tmp.gro -box 8.00361  15.01270  19.72982 -c 
gmx solvate -cp tmp.gro -cs spc216.gro -p ../wd_topol.tmp.top -o w_d.gro
rm tmp.gro
rm ../#wd_topol.tmp.top.1#
