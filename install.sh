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
"$basedir/install_upgrades.sh"

echo "Installing Docker and Docker Compose"
"$basedir/install_docker.sh"
