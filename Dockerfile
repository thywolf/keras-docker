FROM ubuntu:latest
MAINTAINER thywolf@gmail.com

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -qq
RUN apt-get install -y --no-install-recommends git python3 python3-pip python-numpy python-scipy python-matplotlib python-yaml libhdf5-serial-dev python-h5py graphviz
RUN pip3 install setuptools
RUN pip3 install wheel
RUN pip3 install matplotlib
RUN pip3 install pydot-ng
RUN pip3 install tensorflow==1.5.0
RUN pip3 install keras==2.2.0
RUN pip3 install requests

WORKDIR /srv/

CMD ["/usr/bin/python3", "run.py"]
