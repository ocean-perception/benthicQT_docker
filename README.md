# Dockerised benthicQT

1. Download the automatically built image

```
docker pull oceanperception/benthicqt
```

2. Run the image

```
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --rm -it -v $(pwd):/host oceanperception/benthicqt
```

3. The GUI should open. Open a mesh using the normal menu. Access your HOST files under /host in the current directory. If needed to access any other directories, rerun from there.
