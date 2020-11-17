#!/bin/bash
### Problem folder
ProbAddr="3D"

### Solver address
#SolverAddr="."

### Radius Factor
# radfactors=("0.1" "0.2" "0.3" "0.4" "0.5" "0.6" "0.7" "0.8" "0.9" "1.0" "1.1" "1.2" "1.3" "1.4" "1.5")
radfactors=("0.1" "0.5" "1.5")
# timefactors=("5")

# tolfactorsinit=("4")

# tolfactorsmin=("7" "8" "9" "10")

#for rad in "${radfactors[@]}"; do
for filename in "$ProbAddr"/*.txt; do
    for rad in "${radfactors[@]}"; do
        ./exeCVXHULL $filename 3D $rad 14400 V1 CBFS 1 1 2 1 0.5 1 0 1
    done
done