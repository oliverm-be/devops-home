#!/bin/bash

LOCKFILE=/var/run/camera/mobeToWebDav.pid
if [ -e ${LOCKFILE} ] && kill -0 `cat ${LOCKFILE}`; then
    echo "already running"
    exit
fi

# make sure the lockfile is removed when we exit and then claim it
trap "rm -f ${LOCKFILE}; exit" INT TERM EXIT
echo $$ > ${LOCKFILE}

cd
#move to webdav
#rsync -avv --remove-source-files camera2/ /mnt/owncloud-camera/camera2/
#rsync -av --remove-source-files camera2/ root@cloud.levvie.be:/media/owncloud/camera/camera2/
#rsync -av --remove-source-files camera2/ root@cloud.levvie.be:/media/owncloud/camera/gardencam/
rsync -av --remove-source-files camera2/ oliver@cloud.levvie.be:/data/oliver/camera/camera2/


rm -f ${LOCKFILE}
