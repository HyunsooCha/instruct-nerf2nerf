CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.6 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.7 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.8 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.9 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=4 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.0 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=5 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.1 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=6 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.2 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=7 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a beanie" --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.3 --pipeline.ip2p-device cuda:0
