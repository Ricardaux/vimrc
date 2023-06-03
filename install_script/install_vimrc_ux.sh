#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
VIMRC_GIT_FILE="$( dirname -- "${SCRIPT_DIR}")/vimrc.txt" 
VIMRC_FILE=~/.vimrc
VIMRC_BACKUP=~/.vimrc_backup
if [ -e ${VIMRC_FILE} ]; then
    echo "Actual ~/.vimrc will be stored in ~/.vimrc_backup"
    if [ -d ${VIMRC_FILE} ]; then
        cp -r ${VIMRC_FILE} ${VIMRC_BACKUP}
        rm -r ${VIMRC_FILE}
    else
        cp ${VIMRC_FILE} ${VIMRC_BACKUP}
        rm ${VIMRC_FILE}
    fi
fi
ln -s ${VIMRC_GIT_FILE} ${VIMRC_FILE}
apt install clangd
