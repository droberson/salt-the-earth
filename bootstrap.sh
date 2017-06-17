#!/bin/bash

echo "[+] Installing some dank ass packages"
echo

if [ $UID != 0 ]; then
	echo "[-] Must be root"
	exit 1
fi

# Check if Ubuntu 16.04
echo "[+] Checking if this is a Ubuntu 16.04 system"
grep DISTRIB_RELEASE=16.04 /etc/lsb-release 2>&1 >/dev/null
if [ $? != 0 ]; then
	echo "[-] Version check failed. Is this a Ubuntu 16.04 system?"
	echo "[-] Exiting."
	exit 1
fi

# update apt
echo "[+] Updating apt"
apt update
if [ $? != 0 ]; then
	echo "[-] apt update failed."
	echo "[-] Exiting."
	exit 1
fi

# Upgrade current packages
echo "[+] Upgrading current installed packages."
apt upgrade --yes
if [ $? != 0 ]; then
	echo "[-] apt upgrade failed."
	echo "[-] Exiting."
	exit 1
fi

# install salt-minion
echo "[+] Installing salt-minion"
apt install salt-minion --yes
if [ $? != 0 ]; then
	echo "[-] apt install salt-minion failed."
	echo "[-] Exiting."
	exit 1
fi

# Install salt minion configuration
echo "[+] Adding configuration file to /etc/salt/minion"
cat << __EOF__ > /etc/salt/minion
# Installed by the baller ass script
file_client: local
file_roots:
  base:
    - /srv/salt
__EOF__

# Create salt directory:
echo "[+] Creating /srv/salt directory"
mkdir -p /srv/salt

# Copy crap over to salt directory
echo "[+] Copying salt stuff to /srv/salt"
cp -R salt/ /srv

# Finally, apply the stuff
echo "[+] running salt-call --local state.apply"
salt-call --local state.apply

