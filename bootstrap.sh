#!/bin/bash
current_dir=$(readlink -f $(dirname ${BASH_SOURCE[0]}))
sudo pacman -Syu --noconfirm ansible python-argcomplete
sudo activate-global-python-argcomplete
ansible-galaxy collection install community.general kewlfft.aur

ansible-playbook -K ${current_dir}/ansible/bootstrap.yml -i ${current_dir}/ansible/inventory/os.yaml

