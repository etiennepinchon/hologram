# Config

BIN = $(CURDIR)/node_modules/.bin

.PHONY: bootstrap unbootstrap clean watch build debug lint release

default: build

#-------------------------------------------------------
# Utils

bootstrap:
	npm install

unbootstrap:
	rm -Rf node_modules

clean: clearvendors
	rm -rf build
	rm -Rf node_modules

clearvendors: SHELL:=/bin/bash
clearvendors:
	bash -c "rm -R ./vendors"

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
	scripts/site_builder.sh

deploy: predeploy
	$(BIN)/coffee scripts/site_builder.coffee upload
