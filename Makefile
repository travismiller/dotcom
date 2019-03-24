SHELL = /bin/bash

.PHONY: all build build-preview dev zola-bin

all:

build: zola-bin
	cd zola && ZOLA_BIN=../.bin/zola make build

build-preview: zola-bin
	cd zola && ZOLA_BIN=../.bin/zola make build-preview

dev: zola-bin
	cd zola && ZOLA_BIN=../.bin/zola make dev

zola-bin:
	scripts/symlink-zola.sh
	scripts/download-zola.sh
