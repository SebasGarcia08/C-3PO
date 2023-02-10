#!/bin/bash

train="python3 -m torch.distributed.launch --nproc_per_node=4 --use_env src/train.py --train-dataset PCD_CV --test-dataset GSV --test-dataset2 TSUNAMI --data-cv 4 --input-size 256 --model dr_tanet_refine_resnet18 --batch-size 4 --epochs 100 --lr 0.0005 --wd 0 --warmup --loss ce --loss-weight --lr-scheduler cosine"

test="python3 src/train.py --test-only --save-imgs --model dr_tanet_refine_resnet18 --train-dataset PCD_CV --test-dataset TSUNAMI --data-cv 0 --input-size 256 --resume output/fcn_catf_resnet18_PCD_CV_0_256/2021-09-09_10:11:52/checkpoint.pth"
