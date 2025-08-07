#!/bin/bash

scriptdir="$(dirname -- $0)"
setups="$(find $scriptdir/scripts/ -maxdepth 1 -mindepth 1 -executable | sort)"

pushd $scriptdir
for setup in $setups; do
	printf "\e[0;36mRunning setup: $setup\e[0;37m\n"
	"$setup"
	result=$?

	if [[ $result -eq 0 ]]; then
		printf "\e[0;34mFinished running $(basename $setup) with exit code $result\e[0;37m\n\n"
	elif [[ $result -eq 255 ]]; then
		printf "\e[0;33mSkipped $(basename $setup) with exit code $result\e[0;37m\n\n"
	else 
		printf "\e[0;31mFailed $(basename $setup) with exit code $result\e[0;37m\n\n"
	fi
done
popd
