#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo "Usage: $0 HOSTPATH"
    echo "Provide the absolute path to the folder where the meshes are stored,"
    echo "then open your browser at open http://127.0.0.1:6080/."
    exit 0
fi

HOSTPATH=$1

docker run -p 6080:80 --rm -it -v $(HOSTPATH):/host oceanperception/benthicqt
