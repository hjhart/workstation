#!/bin/bash

set -e

export GIT_PROJECT_URL="https://github.com/evantahler/workstation.git"

echo "Starting up..."

# clone this repo to the machine so it has latest configs
echo "Pulling latest project files from $GIT_PROJECT_URL"
cd ~/workspace
git clone --recursive $GIT_PROJECT_URL

# symlinks
echo "linking 'workstation-setup' command"
ln -s ~/workspace/workstation/workstation-setup.sh /usr/local/bin/workstation-setup

# Run the fnial docker entrypoint command
echo "*** starting up SSH on port $WORKSTATION_SSH_PORT ***"
/usr/sbin/sshd -D
