#!/bin/bash
device=${1:-sdc}
sudo mount -t exfat /dev/${device}1 /media/share -o defaults,uid=$(id -u),gid=$(id -g)
sudo mount -t ext4 /dev/${device}2 /media/storage -o defaults

