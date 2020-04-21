#!/bin/bash

brew install fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fisher add rafaelrinaldi/pure

rm ~/.config/fish/config.fish
mv config.fish ~/.config/fish/config.fish

chsh -s /usr/local/bin/fish
