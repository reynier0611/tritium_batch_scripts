#!/bin/bash

for kin in fast mid slow fast2 mid2
do
    for A in 1H 2H 3H 3He dum Csing opt
    do
        # Test if a runlist exists
        runlist=infiles/${A}_${kin}_kin.dat

	echo "working on runlist: " ${runlist}

        if [ -e $runlist ]
        then
		./genjob $runlist
        else
		echo "************************************************************************"
        	echo "No runlist file exists. Moving on..."
		echo "************************************************************************"
        fi
    done
done
