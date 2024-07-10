#!/bin/bash

cp ../d_topol.top ../wd_topol.tmp.top
gmx editconf -f ../2dipe_npt/confout.gro -o tmp.gro -c -box 9.20542   7.80765   8.16515
gmx solvate -cp tmp.gro -cs spc216.gro -p ../wd_topol.tmp.top -o w_d.gro -scale 0.7
rm tmp.gro
rm ../#wd_topol.tmp.top.*
