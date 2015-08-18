#!/bin/bash
. `dirname $0`/../common.sh

#set -vx

#Only sync directory stucture
nfsmount="/tmp/nfsmount"

mkdir $nfsmount
umount $nfsmount
mount $nas:/backup $nfsmount

ssh $cloud -l root 'service mysql stop'

#rsync -avx -f"+ */" -f"- *" root@$cloud:/ $nfsmount/cloud.levvie.be/os
rsync -avzx --exclude /swapfile1 root@$cloud:/ $nfsmount/cloud.levvie.be/os
#rsync -avx -f"+ */" -f"- *" root@$cloud:/data $nfsmount/cloud.levvie.be/data
#rsync -avzx --dry-run root@$cloud:/data $nfsmount/cloud.levvie.be/data
rsync -avzx root@$cloud:/data $nfsmount/cloud.levvie.be/data

ssh $cloud -l root 'service mysql start'

umount $nfsmount
