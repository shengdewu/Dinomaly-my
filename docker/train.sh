#!/bin/bash

docker run --rm --gpus='"device=0"' --cpus=8 --name sdwseg --shm-size=20g -v /mnt/sda:/mnt/sda \
-t dinomaly:1.0 \
--data_path MVTec-AD-Style/pdseg-clahe \
--save_dir dinomaly \
--save_name vitill_mvtec_uni_dinov3_base \
--batch_size 2 \
--item_list region1 region2
