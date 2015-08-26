#!/bin/bash
wakeonlan a0:21:b7:c1:6c:9c
while ! ping -c1 nas-kel-oli.home.levvie.be &>/dev/null; do sleep 1 ; done
