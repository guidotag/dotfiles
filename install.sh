#!/bin/bash

rsync -avh --no-perms .bash_profile ~
rsync -avh --no-perms .bash_prompt ~
rsync -avh --no-perms .bashrc ~
rsync -avh --no-perms .exports ~
rsync -avh --no-perms .functions ~
rsync -avhr --no-perms --exclude ".git" .vim ~
rsync -avh --no-perms .vimrc ~
rsync -avh --no-perms .inputrc ~

source ~/.bashrc
