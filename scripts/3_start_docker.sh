#!/bin/zsh
set -e

docker start in2n
docker attach --detach-keys "ctrl-z" in2n