#!/bin/bash
# Build development image
#
set -eu -o pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
docker build "$@" --tag=neillamoureux/fastbook:1 "${script_dir}/.."  < "${script_dir}/../Dockerfile"
