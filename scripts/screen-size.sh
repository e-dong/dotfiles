#!/bin/bash
diagonal_length=$(echo 'scale=5;sqrt(2224^2+1668^2)' | bc)
echo "scale=5;(10.5/$diagonal_length)*2224*25.4" | bc
echo "scale=5;(10.5/$diagonal_length)*1668*25.4" | bc
