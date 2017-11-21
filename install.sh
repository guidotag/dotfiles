#!/bin/bash

DIR="$(cd $(dirname ${BASH_SOURCE}) && pwd)"

rsync -avh --no-perms .bash_profile ~
rsync -avh --no-perms .bash_prompt ~
rsync -avh --no-perms .bashrc ~
rsync -avh --no-perms .exports ~
rsync -avhr --no-perms --exclude ".git" .vim ~
rsync -avh --no-perms .vimrc ~

source ~/.bashrc
