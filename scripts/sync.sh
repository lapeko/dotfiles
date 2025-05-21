#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/vars.sh"

for CONFIG in "$@"; do
  DATE=$(date +%Y%m%d%H%M%S)
  echo "${CONFIG} syncronization..."
  mv "${HOME}/${CONFIG}" "/tmp/${CONFIG}.${DATE}"
  ln -s "${SRC_PATH}/${CONFIG}" "${HOME}/${CONFIG}"
  echo "${CONFIG} syncronization Done. File ${HOME}/${CONFIG} moved into /tmp/${CONFIG}.${DATE}"
done
