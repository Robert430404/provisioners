#!/bin/bash

# Derives the OS and passes back the string
function detection.getDistro {
  if [[ "${NAME}" ]]; then
    echo "${NAME}"
  else
    source /etc/os-release

    echo "${NAME}"
  fi
}