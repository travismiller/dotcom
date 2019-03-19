#!/usr/bin/env bash

mkdir -p .bin

cd .bin

if [ ! -f zola ]; then
  if type 'zola' > /dev/null; then
    ln -s "$(which zola)"
  fi
fi

cd -
