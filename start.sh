#!/bin/bash

REPO_NAME="provisioners"

# Sets up the script
function start.setup {
  git clone "https://github.com/Robert430404/${REPO_NAME}.git"

  cd "./${REPO_NAME}" || exit 1
}

# Cleanup function
function start.cleanup {
  cd ../ || exit 1

  rm -Rf "./${REPO_NAME}"
}

start.setup

# Source dependencies
source ./utilities/detection.sh
source ./utilities/output.sh

# Check the distro to make sure we're executing the right provisioner
DISTRO=$(detection.getDistro)

if [[ "${DISTRO}" == "Fedora" ]]; then
  source ./fedora/setup.sh

  start.cleanup
else
  output.echoIndentedLine "no valid provisioner found"
  start.cleanup

  exit 1
fi