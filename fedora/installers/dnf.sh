#!/bin/bash

# Updates everything from dnf
function dnf.update {
  sudo dnf update -y
}

# Installs applications from dnf
function dnf.install {
  sudo dnf install -y podman
}

# Enable RPM Fusion on the system
function dnf.rpmFusion {
  sudo dnf install -y \
    "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"
}