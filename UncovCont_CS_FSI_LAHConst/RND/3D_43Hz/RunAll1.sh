#!/bin/bash
### Problem folder
ProbAddr="RND"

### Solver address
#SolverAddr="."

### Radius Factor
radfactors=("1.0")

# timefactors=("5")

# tolfactorsinit=("4")

# tolfactorsmin=("7" "8" "9" "10")

#for rad in "${radfactors[@]}"; do
for filename in "$ProbAddr"/*.txt; do
    for rad in "${radfactors[@]}"; do
        ./exeCVXHULL $filename 3D $rad 14400 V1 CBFS 1 1 2 1 0.5 1 0 1
    done
done
