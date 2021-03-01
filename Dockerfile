# Dockerfile - used by Docker to execute commands to setup the enviornment for the container images
# includes a call to requirements.txt to load needed setup prereqs
# all the commands a user could call on the command-line to assemble an image


# pull the python version 3.8 container - this is a full version - see below for lighter weight
# this will be the base image that will be modified
FROM python:3.8
# found this can be used to pull python container from hub.docker.com a lightweight version of alpine python
# FROM python:3.7-alpine3.12

# define a version of this demo - optional
LABEL version="1.0"

# define who will be responsible for updates - optional
LABEL maintainer="orin.bishop@yahoo.com"

# create variable and set python to run in unbuffered mode - print out directly to consile  when running to avoid potential conflicts
ENV PYTHONUNBUFFERED 1

# make a dir in the container where the app source code can be stored
RUN mkdir /app

# creates and sets the directory to work from inside the container
WORKDIR /app

# copy the requirements file from our filesystem into the docker image /app dir
COPY requirements.txt /app/requirements.txt

# uses the requirements file and installs into the docker image using pip3 (did not symlink pip3 to pip)
RUN pip3 install -r requirements.txt

# copy the dir on local into the container
COPY . /app

# create generic 'user' to run the container - make sure the container does not run as root for security purposes - HAD ISSUES
# RUN adduser -D user

# switch to user - HAD ISSUES 
# USER user

# list contents of the directory
RUN ls -la

# using django to run the app server
CMD python manage.py runserver 0.0.0.0:8000

