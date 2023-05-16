ns-process-data images --data ~/Downloads/images --output-dir ./data/datasets/yonwoo
ns-train nerfacto --data ./data/datasets/yonwoo
ns-render --load-config outputs/yonwoo/nerfacto/2023-05-16_215645/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/2023-05-16_215645.mp4
ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/.../nerfstudio_models --pipeline.prompt "Give him a cowboy hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5