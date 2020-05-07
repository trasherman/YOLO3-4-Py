#!/usr/bin/env bash

echo "Downloading config files..."

mkdir cfg
wget -O cfg/coco.data https://drive.google.com/uc?id=1RQ17vb5mBgGeXvTDUTiy-rFteZf6Oqp1
wget -O cfg/yolov3.cfg https://drive.google.com/uc?id=1LeBYI5jdI9qZCgkdHdY3Z7R1VdFx3_n2

echo "Modify config parameters to enable Testing mode"
sed -i '/batch=64/c\# batch=64' cfg/yolov3.cfg
sed -i '/subdivisions=16/c\# subdivisions=16' cfg/yolov3.cfg
sed -i '/# batch=1/c\batch=1' cfg/yolov3.cfg
sed -i '/# subdivisions=1/c\subdivisions=1' cfg/yolov3.cfg

mkdir data
wget -O data/coco.names https://drive.google.com/uc?id=1-6pDj47HOsirHqfo4zpeBNTgJ0UK8yrg

echo "Downloading yolov3 weights"
mkdir weights
wget -O weights/yolov3.weights https://trasherman.imfast.io/darknet/yolov3.weights
