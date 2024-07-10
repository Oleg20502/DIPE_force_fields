#!/bin/bash

gmx genconf -f ../../syst_data/dipe.gro -nbox 6 25 29 -seed 123456 -rot -dist 0.1 0.1 0.1 -o dipe_init.gro
