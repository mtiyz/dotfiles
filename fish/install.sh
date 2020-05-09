#!/bin/bash

DOTPATH=~/dotfiles

export PATH="$HOME/.linuxbrew/bin:$PATH"

brew install fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fish -c $"fisher add rafaelrinaldi/pure"

if [ -f ~/.config/fish/config.fish ]; then
  rm ~/.config/fish/config.fish
fi

cat $DOTPATH/fish/config.fish > ~/.config/fish/config.fish

## RHEL and ArchLinux
if [ type "yum" > /dev/null 2>&1 ] \
  || [ type "pacman" > /dev/null 2>&1 ]; then
    echo `which fish` | sudo tee -a /etc/shells
fi

sudo chsh -s `which fish`
