#!/bin/bash
#
# Start the docker container for development
#
set -eu -o pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# use --net=host for access to webserver?
docker run --net=host \
--rm -it \
--mount type=bind,source="${script_dir}/..",destination=/fastbook \
"neillamoureux/fastbook:1"
