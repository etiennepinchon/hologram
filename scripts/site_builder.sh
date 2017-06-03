#!/bin/sh

COFFEE="node_modules/.bin/coffee"
GIT_HASH=`git rev-parse --short HEAD`
LATEST=version/latest

mkdir -p build/builds.hologram.cool
$COFFEE scripts/site_builder.coffee build
cp -R extras/builds.hologram.cool/static build/builds.hologram.cool/static
mkdir -p build/builds.hologram.cool/$LATEST
cp build/*.js build/builds.hologram.cool/$LATEST
cp build/*.map build/builds.hologram.cool/$LATEST
cp build/*.zip build/builds.hologram.cool/$LATEST
cp -R build/builds.hologram.cool/$LATEST build/builds.hologram.cool/$GIT_HASH
