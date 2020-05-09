#!/usr/bin/env bash

echo "Downloading config files..."

mkdir cfg
wget -O cfg/coco.data https://trasherman.imfast.io/darknet/coco.data
wget -O cfg/yolov3.cfg https://trasherman.imfast.io/darknet/yolov3.cfg


mkdir data
wget -O data/coco.names https://trasherman.imfast.io/darknet/coco.names

echo "Downloading yolov3 weights"
mkdir weights
wget -O weights/yolov3.weights https://trasherman.imfast.io/darknet/yolov3.weights
