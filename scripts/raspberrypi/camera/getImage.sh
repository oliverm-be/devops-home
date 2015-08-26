#!/bin/bash
datetime=`date +%Y%m%d%H%M%S`
date=`date +%Y%m%d`
year=`date +%Y`
month=`date +%m`
cd
mkdir -p camera2/$year/$month/$date
wget "http://foscam.home.levvie.be/cgi-bin/CGIProxy.fcgi?cmd=snapPicture2&usr=guest" -O camera2/$year/$month/$date/$datetime.jpg
if [[ $? == 0 ]]; then
 convert -quality 90 camera2/$year/$month/$date/$datetime.jpg camera2/$year/$month/$date/$datetime.jpg
else
 rm camera2/$year/$month/$date/$datetime.jpg
fi

