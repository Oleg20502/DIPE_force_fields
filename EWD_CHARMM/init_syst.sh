#!/bin/bash

name=11syst
mkdir -p ${name}/
cd ${name}/

mkdir 1dipe_em
mkdir 2dipe_npt
cp ../4syst/1dipe_em/genconf.sh 1dipe_em/
cp ../4syst/1dipe_em/minim.mdp 1dipe_em/
cp ../4syst/1dipe_em/run.job 1dipe_em/
cp ../4syst/2dipe_npt/run.job 2dipe_npt/
cp ../4syst/2dipe_npt/npt.mdp 2dipe_npt/

mkdir 3ed_em
mkdir 4ed_npt
cp ../4syst/3ed_em/solvate.etoh.sh 3ed_em/
cp ../4syst/3ed_em/minim.mdp 3ed_em/
cp ../4syst/3ed_em/run.minim.job 3ed_em/
cp ../4syst/4ed_npt/run.job 4ed_npt/
cp ../4syst/4ed_npt/npt.mdp 4ed_npt/

mkdir 5ewd_em
cp ../4syst/5ewd_em/solvate.h2o.sh 5ewd_em/
cp ../4syst/5ewd_em/minim.mdp 5ewd_em/
cp ../4syst/5ewd_em/run.minim.job 5ewd_em/

cp ../4syst/d_topol.top .
cp ../4syst/ed_topol.top .
cp ../4syst/ewd_topol.top .

mkdir 6ewd_dens
cd 6ewd_dens
mkdir 298.15
cd 298.15
mkdir 1npt
cp ../../../4syst/6ewd_dens/298.15/1npt/npt.mdp 1npt
cp ../../../4syst/6ewd_dens/298.15/1npt/run.job 1npt
mkdir 2nvt_relax
cp ../../../4syst/6ewd_dens/298.15/2nvt_relax/nvt.mdp 2nvt_relax
cp ../../../4syst/6ewd_dens/298.15/2nvt_relax/run.job 2nvt_relax
mkdir 3nvt
cp ../../../4syst/6ewd_dens/298.15/3nvt/nvt.mdp 3nvt
cp ../../../4syst/6ewd_dens/298.15/3nvt/run.job 3nvt
