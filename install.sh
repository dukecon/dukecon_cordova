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
perl -p -i.bak -e 's,mavenCentral\(\),maven {
            url "http://dev.dukecon.org/nexus/content/groups/public"
        },go' platforms/android/build.gradle

cordova build
