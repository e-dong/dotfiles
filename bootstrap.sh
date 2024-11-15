#!/bin/bash

sudo pacman -Syu ansible python-argcomplete
sudo activate-global-python-argcomplete
ansible-galaxy collection install community.general

