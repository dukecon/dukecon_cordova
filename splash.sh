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

mkdir -p ios-screen
rm ios-screen/*

# Launcher
# iPhone
convert $ICON -resize 1334 ios-screen/Default@2x~iphone~anyany.png 
convert $ICON -resize 2208 ios-screen/Default@3x~iphone~anyany.png
convert $ICON -resize 2732 ios-screen/Default@2x~ipad~anyany.png

convert $ICON -resize 750x1334^ -gravity center -crop 750x1334+0+0 ios-screen/Default@2x~iphone~comany.png
convert $ICON -resize 1334x750^ -gravity center -crop 1334x750+0+0 ios-screen/Default@2x~iphone~comcom.png
convert $ICON -resize 2208x1242^ -gravity center -crop 2208x1242+0+0 ios-screen/Default@3x~iphone~anycom.png
convert $ICON -resize 1242x2208^ -gravity center -crop 1242x2208+0+0 ios-screen/Default@3x~iphone~comany.png
convert $ICON -resize 1278x2732^ -gravity center -crop 1278x2732+0+0 ios-screen/Default@2x~ipad~comany.png
