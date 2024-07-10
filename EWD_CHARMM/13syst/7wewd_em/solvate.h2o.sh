#!/bin/bash

cp ../ewd_topol.top ../ewd_topol2.tmp.top
gmx editconf -f ../6ewd_npt/confout.gro -o tmp.gro -c -box 15.80084   6.96762   7.28666
gmx solvate -cp tmp.gro -cs spc216.gro -p ../ewd_topol2.tmp.top -o w_e_w_d.gro -scale 0.7
rm tmp.gro
rm ../#ewd_topol2.tmp.top.*
