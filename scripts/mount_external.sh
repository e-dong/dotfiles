#!/bin/bash
sudo mount -t exfat /dev/sdc1 /media/share -o defaults,uid=$(id -u),gid=$(id -g)
sudo mount -t ext4 /dev/sdc2 /media/storage -o defaults

