#!/bin/bash

if [ "$#" -gt 1 ]; then
  echo "Error: Accepts zero or one argument! Usage: $0 FILE"
  exit 1
fi

FILE="$HOME/.ssh/id_rsa"
if [ "$#" -eq 1 ]; then
  FILE="$1"
fi

# Generate key
eval "ssh-keygen -t rsa -b 4096 -f $FILE"

# Add the key to the SSH agent so we only need to supply the passphrase once
eval "$(ssh-agent -s)"
ssh-add $FILE

