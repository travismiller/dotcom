SHELL = /bin/bash
ZOLA_BIN ?= zola

.PHONY: all build build-preview clean dev _dev redirects serve webpack webpack-dev

all:

build: redirects webpack
	$(ZOLA_BIN) build
	npx purgecss --config ./purgecss.config.js --out ./public/css

build-preview: redirects webpack
	$(ZOLA_BIN) build --base-url "$$DEPLOY_PRIME_URL"
	npx purgecss --config ./purgecss.config.js --out ./public/css

clean:
	for line in $(shell cat .gitignore); do rm -Rf ".$$line"; done

dev:
	@$(MAKE) _dev -j2

_dev: webpack-dev serve

redirects: static/_redirects

serve:
	$(ZOLA_BIN) serve

webpack: | node_modules
	npm run prod

webpack-dev: | node_modules
	npm run dev

# Real

node_modules:
	npm install

static/_redirects:
	cp static/__redirects static/_redirects
	echo "$$PRIVATE_REDIRECTS" >> static/_redirects
