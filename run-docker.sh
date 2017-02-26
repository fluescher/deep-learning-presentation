#!/bin/bash

docker run -it -v ${PWD}/notebook:/notebooks -p 8888:8888 tensorflow/tensorflow:1.0.0-py
