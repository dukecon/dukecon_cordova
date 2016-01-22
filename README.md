# DukeCon cordova wrapper
## Setup

At least for the build of Android there needs to be a docker container
```cordova``` which is created via the [DukeCon
Docker-Cordova](https://github.com/dukecon/docker-cordova) project.

Some useful links:
http://blog.arungupta.me/cordova-ios-android-tech-tip/
http://stackoverflow.com/questions/34893505/cordova-external-browser-opened-for-content-src/34949358#34949358

## Build
### Android
Just run the following commands:

    # Clean platform and plugins
    ./clean.sh
    # Setup platforms/android and perform a build of the APK
    ./install.sh

### iOS
TDD
