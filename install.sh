#!/bin/bash

cordova () {
    docker run -u `id -u` -it --rm -v $PWD:/src -e 'HOME=/tmp' cordova cordova "$@"
}

test -d platforms/android || cordova platform add android
cp -p build.gradle platforms/android

cordova build
