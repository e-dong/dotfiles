#!/bin/bash

current_dir=$(readlink -f $(dirname ${BASH_SOURCE[0]}))

${current_dir}/setup-desktop.sh "${1}" "${2}" "15"
