SHELL = /bin/sh

.PHONY: help
help:
	@echo 'Help...'

.PHONY: redirects
redirects:
	echo "$$PRIVATE_REDIRECTS" >> gutenberg/static/_redirects

.PHONY: build
build: redirects
	cd gutenberg && gutenberg build

.PHONY: build-preview
build-preview: redirects
	cd gutenberg && gutenberg build --base-url "$$DEPLOY_PRIME_URL"
