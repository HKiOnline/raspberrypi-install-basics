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


#"$basedir/install_upgrades.sh"
"$basedir/install_docker.sh"
