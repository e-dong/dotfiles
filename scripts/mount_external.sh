#!/bin/bash

target_path=/media/external

[ ! -z ${1} ] && device=${1} || {
    default_device=/dev/sda1
    echo "[WARN]: device not specified, defaulting to ${default_device}"
    device=${default_device}
}

sudo mount -t exfat ${device} ${target_path} -o "default,uid=$(id -u),gid=$(id -g),umask=0077"

[ ${?} -eq 0 ] && {
    echo "Mounted ${device} to ${target_path}"
    exit 0
} || {
    echo "[ERROR]: Failed to mount ${device} to ${target_path}"
    exit 1
}

