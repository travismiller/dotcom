SHELL = /bin/bash

.PHONY: all build build-preview dev

all:

build:
	cd zola && make build

build-preview:
	cd zola && make build-preview

dev:
	cd zola && make dev
