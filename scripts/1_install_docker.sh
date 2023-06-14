#!/bin/zsh
docker stop in2n
docker rm in2n
docker rmi in2n:0.1
set -e

docker build ../ -t in2n:0.1
echo "[INFO] docker build finished"
docker run -d -it --gpus=all --shm-size=120G \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:1 \
    -v $HOME/GitHub/instruct-nerf2nerf:/root/GitHub/instruct-nerf2nerf \
    -v $HOME/GitHub/IMavatar:/root/GitHub/IMavatar \
    -v $HOME/GitHub/IMavatar/data:/root/GitHub/IMavatar/data \
    -v $HOME/GitHub/IMavatar/code/runs:/root/GitHub/IMavatar/code/runs \
    --name in2n \
    in2n:0.1
echo "[INFO] docker run finished"
docker start in2n
echo "[INFO] in2n finished"
docker exec in2n pip install --upgrade pip setuptools
docker exec in2n pip install -e /root/GitHub/instruct-nerf2nerf
echo "[INFO] pip install finished for in2n"
docker attach --detach-keys "ctrl-z" in2n