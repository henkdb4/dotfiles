#/bin/bash

apps="spotify discord"

for app in $apps
do
  if command -v $app; then
    $app &
  fi
done
