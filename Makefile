# Configuration

BIN = $(CURDIR)/node_modules/.bin

.PHONY: watch test debug release

default: lazy_bootstrap lazy_build test

# Utilities

bootstrap:
	npm install

lazy_bootstrap: ; @test -d ./node_modules || make bootstrap

unbootstrap:
	rm -Rf node_modules


clean:
	rm -rf build
	rm -Rf node_modules


# Building and testing
build: lazy_bootstrap
	$(BIN)/gulp webpack:debug

lazy_build: ; @test -f ./build/hologram.debug.js || make build

test: lazy_build
	$(BIN)/gulp test

lint: lazy_build
	$(BIN)/gulp lint

release: lazy_bootstrap
	$(BIN)/gulp webpack:release

# Distribution

dist: release
	scripts/dist.sh

site-build: dist
	scripts/site_builder.sh

site-upload: bootstrap site-build
	$(BIN)/coffee scripts/site_builder.coffee upload
