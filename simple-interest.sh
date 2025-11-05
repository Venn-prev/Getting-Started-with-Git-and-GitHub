#!/bin/bash
# This script calculates simple interest.

# Formula: SI = (P × R × T) / 100

# Check if exactly 3 arguments are passed
if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

P=$1
R=$2
T=$3

# Calculate Simple Interest
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
echo "The simple interest is: $SI"
