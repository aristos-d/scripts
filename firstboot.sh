#!/usr/bin/sh
#
# This script is meant to accompany the "quick-vm" script. It is meant to be
# executed inside the VM at first boot. It takes care of some minimum steps
# required to get SSH access to the VM.
#

# Set-up key for root SSH login.
mkdir -p /root/.ssh
chmod 700 /root/.ssh
mv /root/key /root/.ssh/authorized_keys
chown root:root /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

# Generate host SSH keys.
dpkg-reconfigure openssh-server
