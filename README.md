# Limpan/infra

This repo is for the infrastructure I manage.

## Setup hooks
Install git hooks by running `./git-init.sh`.

## Bootstrap machines
`ansible-playbook bootstrap.yml --user linus --ask-become-pass`

## Credits
https://github.com/ironicbadger/infra
https://github.com/bertvv/ansible-role-samba

# TODO:

- Netplan/network configuration
- QEMU/libvirt machines
- LV for vms
- Firewall
