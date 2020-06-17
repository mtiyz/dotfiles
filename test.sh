#!/bin/bash

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

fish -c "dot update"
fish -c "dot upgrade"
fish -c "dot install git-credential-helper"
fish -c "dot install node"
fish -c "dot install nvim"
