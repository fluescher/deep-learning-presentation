#!/bin/bash

docker build -t keras_example -f Dockerfile_Keras .
docker run -it -v ${PWD}/notebook:/notebooks -p 8888:8888 keras_example
