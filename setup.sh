#!/bin/bash

scriptdir="$(dirname -- $0)"
setups="$(find $scriptdir/scripts/ -maxdepth 1 -mindepth 1 -executable)"

for setup in $setups; do
	echo "Running setup: $setup"
	"$setup"
  echo "Finished running $(basename $setup) with exit code $?"
done

