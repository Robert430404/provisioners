#!/bin/bash

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