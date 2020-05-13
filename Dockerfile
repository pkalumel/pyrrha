FROM ubuntu:18.04
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
ADD . /code/
RUN apt update -y
RUN apt install -y apt-utils
RUN apt install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools
RUN apt install -y python3-venv
RUN ln -s /usr/bin/python3 /usr/bin/python && ln -s /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install gunicorn