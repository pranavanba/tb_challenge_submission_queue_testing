FROM jupyter/scipy-notebook
FROM python:3.9-slim-buster

RUN pip install joblib
RUN pip install Pandas
RUN pip install onnxruntime

COPY model.onnx /usr/local/bin/
COPY inference.py /usr/local/bin/
COPY entrypoint.sh /usr/local/bin/

RUN chmod a+x /usr/local/bin/inference.py

ENTRYPOINT ["sh", "./entrypoint.sh"]