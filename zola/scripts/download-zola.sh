#!/usr/bin/env bash

VERSION=${VERSION:-0.7.0}
ARCH=${ARCH:-x86_64-unknown-linux-gnu}

mkdir -p .bin

cd .bin

if [ ! -f zola ]; then
  curl -sL https://github.com/getzola/zola/releases/download/v${VERSION}/zola-v${VERSION}-${ARCH}.tar.gz | tar -xz
else
  echo 'zola already exists!'
fi

cd - >/dev/null
