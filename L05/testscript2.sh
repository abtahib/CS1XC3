#!/bin/bash
WDIR="$1"
cd WDIR

arr=(4 10 17 256)
for ((i=0;i<6;i++)) ; do
	cp "factors_0_${arr[i]}.gov" "factors_0_${arr[i]}.gcov"
	rm "factors_0_${arr[i]}.gov"
        cp "factors_1_${arr[i]}.gov" "factors_1_${arr[i]}.gcov"
        rm "factors_1_${arr[i]}.gov"
done
