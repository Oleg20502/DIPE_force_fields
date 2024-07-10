#!/bin/bash

for i in {32..63}
do
    mkdir s${i}/
    cd s${i}/
    let "seed = $i * 123456 + 1"
    gmx genconf -f ../../dipe_data/dipe.gro -nbox 15 15 15 -seed ${seed} -rot -dist 0.2 0.2 0.2 -o system.gro
    cd ../
done
