#!/bin/bash

git clone https://github.com/Robert430404/provisioners.git

cd ./provisioners

echo "What distribution are you provisioning? [fedora]"
read -r DISTRO

if [[ "${DISTRO}" == "fedora" ]]; then
  
fi

cd ../

rm -Rf ./provisioners