#!/bin/bash

# Outputs an indented line to the console
function output.echoIndentedLine {
  local LINE

  LINE="${1}"

  echo "    ${LINE}"
}