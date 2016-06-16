#!/bin/bash

docker run -v $(pwd)/notebook:/notebooks -p 8888:8888 -p 6006:6006 --rm -it florian/tensorflow
