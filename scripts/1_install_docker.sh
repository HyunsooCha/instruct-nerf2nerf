#!/bin/zsh
set -e

docker build ../ -t nerfstudio:0.1
echo "[INFO] docker build finished"
docker run -d -it --gpus=all --shm-size=120G \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:1 \
    -v $HOME/GitHub/instruct-nerf2nerf:/root/GitHub/instruct-nerf2nerf \
    -v $HOME/GitHub/IMavatar:/root/GitHub/IMavatar \
    -v $HOME/GitHub/IMavatar/data:/root/GitHub/IMavatar/data \
    -v $HOME/GitHub/IMavatar/code/runs:/root/GitHub/IMavatar/code/runs \
    --name nerfstudio \
    nerfstudio:0.1
echo "[INFO] docker run finished"
docker start nerfstudio
echo "[INFO] nerfstudio finished"
docker exec nerfstudio pip install --upgrade pip setuptools
docker exec nerfstudio pip install -e /root/GitHub/instruct-nerf2nerf
echo "[INFO] pip install finished for in2n"
docker attach --detach-keys "ctrl-z" nerfstudio