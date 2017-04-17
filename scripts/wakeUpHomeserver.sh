#!/bin/bash
#wakeonlan ec:a8:6b:ff:d2:70
#while ! ping -c1 homeserver.home.levvie.be &>/dev/null; do sleep 1; done
ssh oliver@homeserver.home.levvie.be "sudo mount /media/media && sudo /etc/init.d/utorrent start"
