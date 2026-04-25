#!/bin/bash
# Compile CSTF MEX files manually, bypassing MATLAB's license check.
# Usage: cd to this directory, then: bash compile_mex.sh

MATLAB_ROOT="/Applications/MATLAB_R2025b.app"
MEX_INCLUDE="$MATLAB_ROOT/extern/include"
MEX_LIB="$MATLAB_ROOT/bin/maca64"

CC="cc"
CFLAGS="-fPIC -DMX_COMPAT_64 -DMATLAB_MEX_FILE -I$MEX_INCLUDE"
LDFLAGS="-shared -L$MEX_LIB -lmx -lmex -lmat -Wl,-rpath,$MEX_LIB"
EXT="mexmaca64"

set -e

echo "Compiling addtocols..."
$CC $CFLAGS -o addtocols.$EXT addtocols.c $LDFLAGS

echo "Compiling collincomb..."
$CC $CFLAGS -o collincomb.$EXT collincomb.c $LDFLAGS

echo "Compiling rowlincomb..."
$CC $CFLAGS -o rowlincomb.$EXT rowlincomb.c $LDFLAGS

echo "Compiling sprow..."
$CC $CFLAGS -o sprow.$EXT sprow.c mexutils.c $LDFLAGS

echo "Compiling im2colstep..."
$CC $CFLAGS -o im2colstep.$EXT im2colstep.c $LDFLAGS

echo "Compiling col2imstep..."
$CC $CFLAGS -o col2imstep.$EXT col2imstep.c $LDFLAGS

OMP_COMMON="mexutils.c ompcore.c omputils.c myblas.c ompprof.c"

echo "Compiling ompmex..."
$CC $CFLAGS -o ompmex.$EXT ompmex.c $OMP_COMMON $LDFLAGS

echo "Compiling omp2mex..."
$CC $CFLAGS -o omp2mex.$EXT omp2mex.c $OMP_COMMON $LDFLAGS

echo ""
echo "Done! Compiled MEX files:"
ls -la *.$EXT
