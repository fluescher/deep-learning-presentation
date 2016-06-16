FROM ubuntu:wily
RUN apt-get update && apt-get install -y \
  git \
  python3-pip \
  python3-dev 
RUN pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.8.0-cp34-cp34m-linux_x86_64.whl
RUN pip3 install jupyter
RUN apt-get install -y build-essential python3-dev python3-setuptools python3-numpy python3-scipy python3-pip libatlas-dev libatlas3gf-base libpng-dev libpng3
RUN apt-get install -y libfreetype6-dev libfreetype6
RUN apt-get update
RUN apt-get install -y pkg-config
RUN pip3 install matplotlib
RUN pip3 install scikit-learn
EXPOSE 8888
EXPOSE 6006
CMD /usr/local/bin/jupyter-notebook --ip=0.0.0.0 /notebooks
