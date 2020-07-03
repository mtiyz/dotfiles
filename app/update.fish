#!/usr/bin/env fish

echo 'Updating dotfiles...'

builtin cd $DOTPATH
git pull
bash $DOTPATH/bin/install.sh
