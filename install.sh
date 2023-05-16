#!/bin/bash
set -e

source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate
conda remove -y -n nerfstudio --all
conda create --name nerfstudio -y python=3.8
echo "nerfstudio environment created"
conda activate nerfstudio
echo "nerfstudio environment activated"
python -m pip install --upgrade pip
echo "pip upgraded"
pip uninstall torch torchvision functorch
echo "torch, torchvision, functorch uninstalled"
pip install torch==1.13.1 torchvision functorch --extra-index-url https://download.pytorch.org/whl/cu117
echo "torch, torchvision, functorch installed"
pip install ninja git+https://github.com/NVlabs/tiny-cuda-nn/#subdirectory=bindings/torch
echo "tiny-cuda-nn installed"
pip install nerfstudio
echo "nerfstudio installed"
pip install --upgrade pip setuptools
pip install -e .
echo "instruct nerf2nerf installed"
ns-train -h
echo "checking the install validation"