#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/vars.sh"

DATE=$(date +%Y%m%d%H%M%S)

echo ".vimrc syncronization..."
mv ~/.vimrc "/tmp/.vimrc.${DATE}"
ln -s "${SRC_PATH}/.vimrc" ~/.vimrc
echo ".vimrc syncronization Done. File ~/.vimrc moved into /tmp/.vimrc.${DATE}"
