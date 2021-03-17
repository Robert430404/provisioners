#!/bin/bash

git clone https://github.com/Robert430404/provisioners.git

cd ./provisioners || exit 1

echo "What distribution are you provisioning? [fedora]"
read -r DISTRO

if [[ "${DISTRO}" == "fedora" ]]; then
  source ./fedora/setup.sh
fi

cd ../ || exit 1

rm -Rf ./provisioners