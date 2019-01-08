#!/bin/bash

rsyncd(){
  rsync -tr /sdcard/Pictures root@192.168.0.102:/mnt/test
}

ping -c1 192.168.0.102 > /dev/null

if [ $?=0 ]
  rsyncd
else
  echo 'unable'
fi
