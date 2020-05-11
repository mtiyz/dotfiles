#!/usr/bin/env fish

echo 'Updating dotfiles...'

builtin cd $DOTPATH
g pull
bash $DOTPATH/homebrew/install.sh
bash $DOTPATH/fish/install.sh
