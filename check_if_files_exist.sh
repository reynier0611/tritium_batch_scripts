#!/bin/sh

# Run to find out which replayed root files are available

krun=100024
while [ $krun -le 100685 ]
do
	counter=0
	while [ $counter -le 15 ]
	do
		input="/cache/halla/triton/raw/triton_${krun}.dat.${counter}"
		
		if [ -e $input ]
		then
			echo $input
			OUTFILE="/volatile/halla/triton/eep_Rootfiles/pass1/tritium_${krun}*.root"

			if [ -e $OUTFILE ]
			then
				echo "File tritium_"${krun}"* exists"
			else
				echo "***** File tritium_"${krun}" does not exist *****"
			fi
		fi
	((counter++))
	done
	((krun++))
done


