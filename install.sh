#!/usr/bin/env bash

basedir="$(dirname "$0")"

echo "########################################################################"
echo "########################################################################"
echo "########### Raspberry Pi Basic Utilities Installation by HKi ###########"
echo "########################################################################"
echo "########################################################################"


if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo "This installation script is intended only for Linux-type operation systems."
    exit 1
fi


echo "Updating repositories and upgrading packages"
curl -fsSL https://raw.githubusercontent.com/HKiOnline/raspberrypi-install-basics/main/install_upgrades.sh | bash

echo "Install essential utilities"
curl -fsSL https://raw.githubusercontent.com/HKiOnline/raspberrypi-install-basics/main/install_utilities.sh" | bash

echo "Installing Docker and Docker Compose"
curl -fsSL https://raw.githubusercontent.com/HKiOnline/raspberrypi-install-basics/main/install_docker.sh | bash
