#!/usr/bin/env bash

ZOLA_VERSION=${ZOLA_VERSION:-0.12.2}
ARCH=${ARCH:-x86_64-unknown-linux-gnu}

mkdir -p .bin

cd .bin

if [ ! -f zola ]; then
  curl -sL https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-${ARCH}.tar.gz | tar -xz
else
  echo 'zola already exists!'
fi

cd - >/dev/null
