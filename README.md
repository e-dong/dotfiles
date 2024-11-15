# Dotfiles

Personal dotfile repo

Things not configured yet:
- .xinitrc
- .zlogin
- .zlogout
- .ssh

## Usage 

*NOTE*: This was only tested on a system using Arch/Artix

Run `./bootstrap.sh` to install ansible and run the ansible playbook.

If ansible is already set up, you can run the playbook via `ansible-playbook -K ansible/bootstrap.yml`

Run `./update-git.sh` to stage all changes, commit, and push them.

