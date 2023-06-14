# To Figure Out How many we need to get the identy-maintained cfg value

# VCSR
CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_1dot6 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.6 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_1dot7 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.7 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_1dot8 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.8 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_1dot9 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 1.9 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=4 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_2dot0 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.0 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=5 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_2dot1 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.1 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=6 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp image_cfg_2dot2 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.2 --pipeline.ip2p-device cuda:0

# render
CUDA_VISIBLE_DEVICES=0 ns-render --load-config outputs/yonwoo/in2n/image_cfg_1dot6/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_1dot6.mp4
CUDA_VISIBLE_DEVICES=1 ns-render --load-config outputs/yonwoo/in2n/image_cfg_1dot7/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_1dot7.mp4
CUDA_VISIBLE_DEVICES=2 ns-render --load-config outputs/yonwoo/in2n/image_cfg_1dot8/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_1dot8.mp4
CUDA_VISIBLE_DEVICES=3 ns-render --load-config outputs/yonwoo/in2n/image_cfg_1dot9/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_1dot9.mp4
CUDA_VISIBLE_DEVICES=4 ns-render --load-config outputs/yonwoo/in2n/image_cfg_2dot0/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot0.mp4
CUDA_VISIBLE_DEVICES=5 ns-render --load-config outputs/yonwoo/in2n/image_cfg_2dot1/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot1.mp4
CUDA_VISIBLE_DEVICES=6 ns-render --load-config outputs/yonwoo/in2n/image_cfg_2dot2/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot2.mp4

# vcsr another experiments
CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot0 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.0 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot1 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.1 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot2 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.2 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot3 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.3 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=4 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot4 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.4 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=5 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot5 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=6 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a baseball cap" --timestamp cap_image_cfg_2dot6 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.6 --pipeline.ip2p-device cuda:0

# render
CUDA_VISIBLE_DEVICES=0 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot0/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot0.mp4
CUDA_VISIBLE_DEVICES=1 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot1/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot1.mp4
CUDA_VISIBLE_DEVICES=2 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot2/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot2.mp4
CUDA_VISIBLE_DEVICES=3 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot3/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot3.mp4
CUDA_VISIBLE_DEVICES=4 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot4/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot4.mp4
CUDA_VISIBLE_DEVICES=5 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot5/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot5.mp4
CUDA_VISIBLE_DEVICES=6 ns-render --load-config outputs/yonwoo/in2n/cap_image_cfg_2dot6/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/cap_image_cfg_2dot6.mp4



# UFUS
CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp bucket_image_cfg_2dot3 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.3 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp bucket_image_cfg_2dot4 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.4 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp bucket_image_cfg_2dot5 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.5 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a bucket hat" --timestamp bucket_image_cfg_2dot6 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.6 --pipeline.ip2p-device cuda:0

# render
CUDA_VISIBLE_DEVICES=0 ns-render --load-config outputs/yonwoo/in2n/bucket_image_cfg_2dot3/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot3.mp4
CUDA_VISIBLE_DEVICES=1 ns-render --load-config outputs/yonwoo/in2n/bucket_image_cfg_2dot4/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot4.mp4
CUDA_VISIBLE_DEVICES=2 ns-render --load-config outputs/yonwoo/in2n/bucket_image_cfg_2dot5/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot5.mp4
CUDA_VISIBLE_DEVICES=3 ns-render --load-config outputs/yonwoo/in2n/bucket_image_cfg_2dot6/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/image_cfg_2dot6.mp4

# another experiment
CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond hair" --timestamp blond_hair_image_cfg_2dot1 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.1 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond hair" --timestamp blond_hair_image_cfg_2dot2 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.2 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond hair" --timestamp blond_hair_image_cfg_2dot3 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.3 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond hair" --timestamp blond_hair_image_cfg_2dot4 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.4 --pipeline.ip2p-device cuda:0

# render
CUDA_VISIBLE_DEVICES=0 ns-render --load-config outputs/yonwoo/in2n/blond_hair_image_cfg_2dot1/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_hair_image_cfg_2dot1.mp4
CUDA_VISIBLE_DEVICES=1 ns-render --load-config outputs/yonwoo/in2n/blond_hair_image_cfg_2dot2/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_hair_image_cfg_2dot2.mp4
CUDA_VISIBLE_DEVICES=2 ns-render --load-config outputs/yonwoo/in2n/blond_hair_image_cfg_2dot3/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_hair_image_cfg_2dot3.mp4
CUDA_VISIBLE_DEVICES=3 ns-render --load-config outputs/yonwoo/in2n/blond_hair_image_cfg_2dot4/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_hair_image_cfg_2dot4.mp4


# another experiment
CUDA_VISIBLE_DEVICES=0 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond long hair" --timestamp blond_long_hair_image_cfg_2dot1 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.1 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=1 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond long hair" --timestamp blond_long_hair_image_cfg_2dot2 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.2 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=2 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond long hair" --timestamp blond_long_hair_image_cfg_2dot3 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.3 --pipeline.ip2p-device cuda:0
CUDA_VISIBLE_DEVICES=3 ns-train in2n --data ./data/datasets/yonwoo --load-dir outputs/yonwoo/nerfacto/2023-05-16_215645/nerfstudio_models --pipeline.prompt "Give him a blond long hair" --timestamp blond_long_hair_image_cfg_2dot4 --pipeline.guidance-scale 7.5 --pipeline.image-guidance-scale 2.4 --pipeline.ip2p-device cuda:0

# render
CUDA_VISIBLE_DEVICES=0 ns-render --load-config outputs/yonwoo/in2n/blond_long_hair_image_cfg_2dot1/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_long_hair_image_cfg_2dot1.mp4
CUDA_VISIBLE_DEVICES=1 ns-render --load-config outputs/yonwoo/in2n/blond_long_hair_image_cfg_2dot2/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_long_hair_image_cfg_2dot2.mp4
CUDA_VISIBLE_DEVICES=2 ns-render --load-config outputs/yonwoo/in2n/blond_long_hair_image_cfg_2dot3/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_long_hair_image_cfg_2dot3.mp4
CUDA_VISIBLE_DEVICES=3 ns-render --load-config outputs/yonwoo/in2n/blond_long_hair_image_cfg_2dot4/config.yml --traj filename --camera-path-filename data/datasets/yonwoo/camera_paths/2023-05-16_215645.json --output-path renders/yonwoo/blond_long_hair_image_cfg_2dot4.mp4
