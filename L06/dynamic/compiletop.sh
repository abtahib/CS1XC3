WDIR=$1
if (($#==0)); then
	echo Provide a directory containing the library file to compile top.c
	exit 1
fi
gcc -L$WDIR -Wl,-rpath=$WDIR -Wall -o test top.c -lLab6Part5

