#!/bin/bash

for kin in fast mid slow fast2 mid2
do
    for A in 1H 2H 3H 3He dum Csing opt
    do
	swif run -workflow tritium_eep_${A}_${kin}_kin_replay
    done
done
