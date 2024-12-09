#!/bin/bash

scriptdir="$(dirname -- $0)"
setups="$(find $scriptdir/setup.d/ -maxdepth 1 -mindepth 1 -executable)"

for setup in $setups; do
	echo "Running setup: $setup"
	"$setup"
done

