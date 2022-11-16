#!/bin/bash

ln -sf /usr/local/bin/model.onnx /output
ENTRYPOINT ["python", "/usr/local/bin/inference.py"]