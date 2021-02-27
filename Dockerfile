# docker build file
# pull python container from hub.docker.com a lightweight version of alpine python
FROM python:3.7-alpine3.12
#FROM python:3.8
MAINTAINER Orin Bishop

# set python to run in unbuffered mmode - prints directly when running to avoid issues
ENV PYTHONUNBUFFERED 1

# copy the requirements file from our filesystem into the docker image
COPY ./requirements.txt /requirements.txt

# takes the requirements file and installs into the docker image using pip
RUN pip install -r /requirements.txt

# make a dir in the container where the app source code can be stored
RUN mkdir /app

# set this as the directory to work from  
WORKDIR /app

# copy the app dir on local into the container
# COPY ./app /app 
COPY . /app
# create generic 'user' to run the container - make sure the container does not run as root for security purposes
#RUN adduser -D user
# RUN adduser user

# switch to user
# USER user

