#!/bin/bash
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --rm -it -v $(pwd):/host oceanperception/benthicqt
