#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

# check if /etc/tor/torrc exists
if [ ! -f /etc/tor/torrc ]; then
  echo "torrc file not found, make sure to mount it to /etc/tor/torrc in the container"
  exit 1
fi

# start tor
exec tor -f /etc/tor/torrc