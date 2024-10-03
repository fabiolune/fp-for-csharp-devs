#!/bin/bash

DIR=$1
OUTPUT="${2:-pdf}"

chmod -R 777 $DIR

rm ${DIR}/main.pdf 2> /dev/null

docker run \
    --rm \
    -v $(pwd)/${DIR}:/home/marp/app/ \
    -e LANG=en marpteam/marp-cli:v2.1.4 main.md \
    --$OUTPUT \
    --allow-local-files
