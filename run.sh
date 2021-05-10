#!/bin/bash
#docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -it --entrypoint /bin/bash oceanperception/benthicqt
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" oceanperception/benthicqt
