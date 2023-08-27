#!/bin/bash

set -x
docker build -t insidetux.github.io
docker run -it --rm \
  --workdir /root/insidetux.github.io \
  -v $PWD:/root/insidetux.github.io \
  --net=host \
  insidetux.github.io \
  bundle exec jekyll serve
