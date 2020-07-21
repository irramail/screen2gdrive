#!/bin/sh
while true
do
#  mplayer -really-quiet tv:// -tv driver=v4l2:device=/dev/video0:outfmt=YUY2 -vo jpeg -frames 20 2>/dev/null
#  scp -q 00000010.png 91.193.226.222:/var/web/map/tmp/screen.png
  fswebcam -d /dev/video0 -S 300 -r 640x480 snapshot.jpg
  ~/google-drive-upload/upload.sh ~/snapshot.jpg photoa
  sleep 50
done
fswebcam -d /dev/video0 -S 300 -r 640x480 test.jpg
