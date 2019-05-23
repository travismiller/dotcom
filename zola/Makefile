SHELL = /bin/bash
ZOLA_BIN ?= .bin/zola

.PHONY: all build build-preview clean dev _dev redirects serve webpack webpack-dev zola-bin

all:

build: zola-bin redirects webpack
	$(ZOLA_BIN) build
	yarn run purgecss --config ./purgecss.config.js --out ./public/css

build-preview: zola-bin redirects webpack
	$(ZOLA_BIN) build --base-url "$$DEPLOY_PRIME_URL"
	yarn run purgecss --config ./purgecss.config.js --out ./public/css

clean:
	for line in $(shell cat .gitignore); do rm -Rf ".$$line"; done

dev: zola-bin
	@$(MAKE) _dev -j2

_dev: webpack-dev serve

redirects: static/_redirects

serve:
	$(ZOLA_BIN) serve

webpack: | node_modules
	yarn prod

webpack-dev: | node_modules
	yarn run dev

zola-bin: .bin/zola

# Real

yarn.lock:
	[ -f yarn.lock ] || touch yarn.lock

node_modules: package.json yarn.lock
	yarn install
	touch node_modules

static/_redirects:
	cp static/__redirects static/_redirects
	echo "$$PRIVATE_REDIRECTS" >> static/_redirects

.bin/zola:
	scripts/symlink-zola.sh
	scripts/download-zola.sh
	touch .bin/zola
