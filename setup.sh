#!/bin/bash

gunzip vnncomp2022_benchmarks/benchmarks/*/onnx/* vnncomp2022_benchmarks/benchmarks/*/vnnlib/*
wget https://github.com/onnx/models/raw/main/vision/classification/vgg/model/vgg16-7.onnx benchmarks/vggnet16_2022/onnx/vgg16-7.onnx
