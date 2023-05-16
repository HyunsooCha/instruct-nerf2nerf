#!/bin/zsh
set -e

docker start nerfstudio
docker attach --detach-keys "ctrl-z" nerfstudio