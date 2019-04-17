#!/bin/bash

set -e

name=`uname`
if [[ "$name" != 'Darwin' ]]; then
   uid="-u `id -u`"
else
   uid=""
fi


# The following docker flags must only be set for interactive sessions with terminal
interactive="-it"
tty -s || interactive=""

cordova () {
    docker run ${uid} ${interactive} --rm -v $PWD:/src -e 'HOME=/tmp' android/cordova cordova "$@"
}

test -d platforms || mkdir platforms
test -d platforms/android || cordova platform add android
test -d plugins/cordova-plugin-inappbrowser || cordova plugin add cordova-plugin-inappbrowser

perl -p -i.bak -e 's,mavenCentral\(\),maven {
            url "http://dev.dukecon.org/nexus/content/groups/public"
        },go' platforms/android/build.gradle

cordova build
