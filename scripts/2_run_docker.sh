#!/bin/zsh
docker rm nerfstudio
set -e

docker run -d -it --gpus=all --shm-size=120G \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:1 \
    -v $HOME/GitHub/instruct-nerf2nerf:/root/GitHub/instruct-nerf2nerf \
    -v $HOME/GitHub/IMavatar:/root/GitHub/IMavatar \
    -v $HOME/GitHub/IMavatar/data:/root/GitHub/IMavatar/data \
    -v $HOME/GitHub/IMavatar/code/runs:/root/GitHub/IMavatar/code/runs \
    --net=host \
    --name nerfstudio \
    nerfstudio:0.1