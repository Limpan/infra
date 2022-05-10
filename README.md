# Limpan/infra

This repo is for the infrastructure I manage.

## Setup hooks
Install git hooks by running `./git-init.sh`.

## Bootstrap machines
Define TailScale API key in `TAILSCALE_KEY` and run

`ansible-playbook bootstrap.yml --extra-vars "target=bombur" --user linus --ask-become-pass`

## Credits
https://github.com/ironicbadger/infra
https://github.com/bertvv/ansible-role-samba

# TODO:

- Netplan/network configuration
- QEMU/libvirt machines
- LV for vms
- Firewall
