# Config

BIN = $(CURDIR)/node_modules/.bin

.PHONY: bootstrap unbootstrap clean watch build debug lint release docs vendors

default: build

#-------------------------------------------------------
# Utils

bootstrap:
	npm install

unbootstrap:
	rm -Rf node_modules

clean:
	rm -rf vendors
	rm -rf dist
	rm -Rf node_modules

clearvendors:
	rm -rf vendors

#-------------------------------------------------------
# Build

vendors: clearvendors
	$(BIN)/gulp vendors

build: bootstrap vendors
	$(BIN)/gulp webpack:debug

lint: build
	$(BIN)/gulp lint

release: bootstrap vendors
	$(BIN)/gulp webpack:release

watch: bootstrap vendors
		$(BIN)/gulp watch

dev: bootstrap vendors
	$(BIN)/gulp webpack:dev-server

#-------------------------------------------------------
# Dist

dist: release
	scripts/dist.sh

predeploy: dist
	. ../Pipeline/env.sh; \
	scripts/site_builder.sh

deploy: predeploy
	. ../Pipeline/env.sh; \
	$(BIN)/coffee scripts/site_builder.coffee upload
