#!/bin/bash

# Source dependencies
source ./utilities/detection.sh
source ./utilities/output.sh

# Check the distro to make sure we're executing the right provisioner
DISTRO=$(detection.getDistro)

if [[ "${DISTRO}" == "Fedora" ]]; then
  output.echoIndentedLine "You are trying to run wrong provisioner"
  output.echoIndentedLine "Run the provisioner for '${DISTRO}' instead"

  exit 1
fi

# source installers
source ./fedora/installers/dnf.sh
source ./fedora/installers/flatpak.sh

# Configure DNF
dnf.update
dnf.rpmFusion
dnf.install

# Configure Flatpak
flatpak.flathub
flatpak.install