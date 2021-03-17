#!/bin/bash

# Enable flathub
function flatpak.flathub {
  flatpak remote-add \
    --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}

# Install applications from flatpak
function flatpak.install {
  flatpak install \
    com.bitwarden.desktop \
    com.discordapp.Discord \
    com.slack.Slack \
    com.spotify.Client \
    com.valvesoftware.Steam \
    com.visualstudio.code \
    fr.handbrake.ghb \
    net.runeline.RuneLite \
    org.gimp.GIMP \
    org.videolan.VLC \
    us.zoom.Zoom
}