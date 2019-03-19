SHELL = /bin/bash

.PHONY: help
help:
	@echo 'Help...'

.PHONY: redirects
redirects:
	cp zola/static/__redirects zola/static/_redirects
	echo "$$PRIVATE_REDIRECTS" >> zola/static/_redirects

.PHONY: zola-bin
zola-bin:
	scripts/symlink-zola.sh
	scripts/download-zola.sh

.PHONY: build
build: zola-bin redirects
	cd zola && ../.bin/zola build

.PHONY: build-preview
build-preview: zola-bin redirects
	cd zola && ../.bin/zola build --base-url "$$DEPLOY_PRIME_URL"
