time=`date +%Y-%m-%d-%h-%M-%s`

adb shell screencap -p /sdcard/screenshot.png
adb pull /sdcard/screenshot.png
adb shell rm /sdcard/screenshot.png
mv screenshot.png ~/Downloads/$time.png
echo "Screenshot was saved to "$time.png
open ~/Downloads/$time.png -R
open -a Preview ~/Downloads/$time.png
