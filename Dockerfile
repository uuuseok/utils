FROM ubuntu:22.04
  
LABEL maintainger='useok'
LABEL description = "ubuntu20.04 & python 3.9"


RUN apt-get update -y
RUN apt-get -y install libgl1-mesa-glx
RUN apt-get -y install libglib2.0-0
RUN pip install opencv-python
RUN apt-get install -y software-properties-common
RUN apt-get install -y python3-pip
RUN pip install jupyter

ENTRYPOINT ["/bin/bash"]
