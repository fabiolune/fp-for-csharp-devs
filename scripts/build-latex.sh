#!/bin/bash

DIR=$1
ITERATIONS=2

if [ "$2" = "--debug" ]
then
  ITERATIONS=1
fi

if [ ! -d "$DIR" ]; then
  echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi

rm ${DIR}/main.pdf 2> /dev/null

seq $ITERATIONS | xargs -i docker run \
                -v $(pwd)/${DIR}:/work \
                --workdir=/work \
                --rm \
                --entrypoint=xelatex \
                texlive/texlive main.tex

echo "clean up..."
rm -f ${DIR}/*.aux
rm -f ${DIR}/*.log
rm -f ${DIR}/*.nav
rm -f ${DIR}/*.out
rm -f ${DIR}/*.snm