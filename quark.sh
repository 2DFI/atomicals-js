#!/bin/bash

while true; do
  yarn cli mint-dft quark --satsbyte=$fee
  sleep 2
done
