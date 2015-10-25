#!/bin/bash

drun () {
    docker run -it --rm "$@"
}

cordova () {
    drun --privileged -v /dev/bus/usb:/dev/bus/usb -v $PWD:/src cordova cordova "$@"
}

test -d platforms/android || cordova platform add android
cp -p build.gradle platforms/android

cordova build
