#!/bin/bash

if [ -f $2 ]; then
  rm -f $2
fi

ln -sf $1 $2
