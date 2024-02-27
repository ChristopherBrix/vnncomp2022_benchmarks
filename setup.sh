#!/bin/bash

wget https://rwth-aachen.sciebo.de/s/1z7n1nh0YVT9KjK/download -O large_models.zip
unzip large_models.zip -d large_models
cd large_models/vnncomp2022/
find . -type f -exec mv "{}" "../../benchmarks/{}" \;
cd ../..
rm -r large_models large_models.zip 

gunzip benchmarks/*/onnx/* benchmarks/*/vnnlib/*
wget https://github.com/onnx/models/raw/5faef4c33eba0395177850e1e31c4a6a9e634c82/vision/classification/vgg/model/vgg16-7.onnx -O benchmarks/vggnet16_2022/onnx/vgg16-7.onnx
