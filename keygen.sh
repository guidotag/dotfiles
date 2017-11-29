#!/bin/bash

if [ "$#" -gt 1 ]; then
  echo "Error: Expects zero or one arguments."
  echo "Usage: $0 [KEY], where KEY is the key file to generate."
  exit 1
fi

KEY="$HOME/.ssh/id_rsa"
if [ "$#" -eq 1 ]; then
  KEY="$1"
fi

# Generate key
eval "ssh-keygen -t rsa -b 4096 -f $KEY"

# Add the key to the SSH agent so we only need to supply the passphrase once
eval "$(ssh-agent -s)"
ssh-add $KEY

