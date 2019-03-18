SHELL = /bin/sh

.PHONY: help
help:
	@echo 'Help...'

.PHONY: redirects
redirects:
	cp zola/static/__redirects zola/static/_redirects
	echo "$$PRIVATE_REDIRECTS" >> zola/static/_redirects

.PHONY: build
build: redirects
	cd zola && zola build

.PHONY: build-preview
build-preview: redirects
	cd zola && zola build --base-url "$$DEPLOY_PRIME_URL"
