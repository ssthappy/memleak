#!/bin/bash
program="cat"
#rm -f "$program""_result"
# run
#cp checklists ../checklists
cp global_array.h ../global_array.h
cp global_array.c ../global_array.c
cp "../""$program"".c" "$program""_origin.c"
cp "$program""_inject.c" "../""$program"".c"
cd ../
#make "crest_""$program"
#make "run_""$program"
make $program
cp "$program"  "$program""_inject_files"
#mv "$program""_path" "$program""_inject_files/""$program""_path"
#make clean
#rm -f checklists
rm -f global_array.h global_array.c
cd "$program""_inject_files"
cp "$program""_origin.c" "../""$program"".c"

