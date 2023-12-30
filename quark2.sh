#!/bin/bash

while true; do

  # Run the Python script and capture the output
  fee=$(python3 gas.py)
  if [[ $fee -lt 100 ]]; then
    echo "Fee is $fee. Let's go!"
    # Run your npm script with the fee
    yarn cli mint-dft quark --satsbyte=$fee
  else
    echo "Fee is $fee, too high. Let's wait."
    sleep 300
  fi

done
