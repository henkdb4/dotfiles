#/bin/bash

apps="com.spotify.Client
      com.discordapp.Discord"

for app in $apps
do
  if command -v $app; then
    $app &
  fi
done
