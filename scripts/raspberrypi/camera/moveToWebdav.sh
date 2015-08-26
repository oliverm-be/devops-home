#!/bin/bash

cd
#move to webdav
rsync -avv --remove-source-files camera2/ /mnt/owncloud-camera/camera2/
