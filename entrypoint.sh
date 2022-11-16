#!/bin/bash

ln -sf model/model.onnx /output
python inference.py