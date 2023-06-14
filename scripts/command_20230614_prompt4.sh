#!/bin/zsh
set -e

device=0
prompt="make him have a bald hair, keep ears"
cfg_txt=7.5
cfg_img=2.9
time_step=bald
CUDA_VISIBLE_DEVICES=$device ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt $prompt --timestamp $time_step --pipeline.guidance-scale $cfg_txt --pipeline.image-guidance-scale $cfg_img --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=$device ns-render --load-config outputs/yonwoo/in2n/$time_step/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/$time_step.mp4
