#!/bin/sh

ln -sf model/model.onnx /output
python inference.py