ns-process-data images --data ~/Downloads/images --output-dir ./data/datasets/yonwoo
ns-train nerfacto --data ./data/datasets/yonwoo
ns-render --load-config outputs/yonwoo/nerfacto/2023-05-16_215645/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/2023-05-16_215645.mp4


CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a cowboy hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a cloche hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beret" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=4 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a panama hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=5 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=6 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=7 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a pillbox hat" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.5 --pipeline.ip2p-device cuda:0
