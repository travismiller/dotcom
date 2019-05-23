#!/usr/bin/env bash

mkdir -p .bin

cd .bin

if [ ! -f zola ]; then
  if type 'zola' > /dev/null 2>&1; then
    ln -s "$(which zola)"
  fi
else
  echo 'zola already exists!'
fi

cd -
