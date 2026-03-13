#!/bin/bash

dest="$HOME/Downloads/jenji"

mkdir -p "$dest"

cd "$HOME/Downloads/2025"


for m in $(seq -w 1 12); do
    cp "$m"/*/* "$dest"/
done
