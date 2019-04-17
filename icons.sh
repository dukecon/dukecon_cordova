#
# (OS X, Unix and Linux)
#
# What is this?
#
# It's a shell script that is using ImageMagick to create all the icon files from one source icon.
#
# Stick the script in your 'www/res/icons' folder with your source icon 'my-hires-icon.png' then trigger it from Terminal.
#

ICON=$1

mkdir -p ios
rm ios/*

# Launcher
# iPhone
convert $ICON -resize 29 ios/icon-small.png 
convert $ICON -resize 58 ios/icon-small@2x.png 
convert $ICON -resize 87 ios/icon-small@3x.png 
convert $ICON -resize 57 ios/icon-57.png 
convert $ICON -resize 57 ios/icon.png 
convert $ICON -resize 114 ios/icon@2x.png 
convert $ICON -resize 50 ios/icon-50.png 
convert $ICON -resize 100 ios/icon-50@2x.png 
convert $ICON -resize 114 ios/icon-57@2x.png 
convert $ICON -resize 180 ios/icon-60@3x.png 
convert $ICON -resize 120 ios/icon-60@2x.png 
# iPad Pro
convert $ICON -resize 167 ios/icon-167.png 
convert $ICON -resize 167 ios/icon-83.5@2x.png 
# iPad, iPad mini
convert $ICON -resize 72 ios/icon-72.png 
convert $ICON -resize 144 ios/icon-72@2x.png 
convert $ICON -resize 76 ios/icon-76.png 
convert $ICON -resize 152 ios/icon-76@2x.png 
# App Store
convert $ICON -resize 1024 -alpha off ios/icon-1024.png

# spotlight
# iPhone
convert $ICON -resize 80 ios/icon-40@2x.png 
convert $ICON -resize 120 ios/icon-40@3x.png 
# iPhone, iPad, iPad mini
convert $ICON -resize 80 ios/icon-40@2x.png 

# Settings
# iPhone
convert $ICON -resize 87 ios/icon-29@3x.png 
# iPhone, iPad, iPad mini
convert $ICON -resize 58 ios/icon-29@2x.png 

#Notification
convert $ICON -resize 60 ios/icon-20@3x.png 
convert $ICON -resize 60 ios/icon-60.png 
convert $ICON -resize 40 ios/icon-20@2x.png 
convert $ICON -resize 40 ios/icon-40.png 
