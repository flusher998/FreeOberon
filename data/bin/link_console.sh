#!/bin/bash
#   This script is run by Free Oberon on Linux. Current directory of the
#   script will be where FreeOberon executable is located. This
#   particular script is for console programs.

THENAME="${1%.*}"
ONAME="${THENAME##*/}"
OFRDIR="../data/bin/OfrontPlus/Target/Linux_amd64"
PATH="$OFRDIR:$PATH"
CC="gcc"

cd bin



shift











$CC -g3 -O0 -fno-exceptions \
  -I ../../src \
  -I $OFRDIR/../../Mod/Lib \
  -I $OFRDIR/Lib/Obj \
  $ONAME.c -o $ONAME \
  $@ \
  ../data/bin/libFreeOberon.a \
  $OFRDIR/Lib/libOfront.a
retcode=$?
cd ..
exit $retcode
