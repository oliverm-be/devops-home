#!/bin/bash
ssh root@nas-kel-oli.home.levvie.be shutdown -h now
while ping -c1 nas-kel-oli.home.levvie.be &>/dev/null; do sleep 1; done

