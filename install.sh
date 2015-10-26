#!/bin/bash

set -e

uid=`id -u`

# The following docker flags must only be set for interactive sessions with terminal
interactive="-it"
tty -s || interactive=""

cordova () {
    docker run -u ${uid} ${interactive} --rm -v $PWD:/src -e 'HOME=/tmp' cordova cordova "$@"
}

test -d platforms || mkdir platforms
test -d platforms/android || cordova platform add android
cp -p build.gradle platforms/android

cordova build
