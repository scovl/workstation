#!/bin/bash
# check if is root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

# check what OS is running
if [ -f /etc/redhat-release ]; then
    # RedHat/CentOS/Fedora
    dnf install -y ansible
elif [ -f /etc/debian_version ]; then
    # Debian/Ubuntu
    apt-get install -y ansible
elif [ -f /etc/arch-release ]; then
    # Arch
    pacman -S ansible
elif [ -f /etc/freebsd-update.conf ]; then
    # FreeBSD
    pkg install -y ansible
elif [ -f /etc/openbsd-update.conf ]; then
    # OpenBSD
    pkg_add -I ansible
else
    # Fall back to Python pip
    pip install ansible
fi

# check if ansible is installed
if ! [ -x "$(command -v ansible)" ]; then
    echo 'Error: ansible is not installed.' >&2
    exit 1
else
    echo 'Ansible is installed'
fi
