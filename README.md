# Demo for rh - q1 - problem solving

Demo: sample app using containers for django and mysql

This includes Dockerfile and docker-compose files

## Getting Started

Basic instructions:

Download the repo

Start the container:

docker-compose up


### Prerequisites

What things you need to install the software and how to install them

```
sudo su -
yum update -y

# setup required software
yum install git -y

# more dependencies
yum install -y gcc openssl-devel bzip2-devel libffi-devel

sudo amazon-linux-extras install epel -y
sudo yum install python3-pip -y
pip3 install django
pip3 freeze

sudo pip3 install virtualenv
whereis virtualenv
cd ~
virtualenv djangoenv

# creates env in: ~/djangoenv/ .
source ~/djangoenv/bin/activate
pip3 install --upgrade Django==2.*
python -m django --version

# to exit env
deactivate


# create second env - for dev
source ~/djangoenv2/bin/activate
pip3 install --upgrade Django
python -m django --version
# to exit
deactivate

# install mysql client - could probably install this as a sperate continer
# used for potential testing with mysql db
yum install mysql -y
mysql --version
# mysql  Ver 8.0.21 

sudo amazon-linux-extras install docker -y

# yum install docker -y

# setup user to run docker - will need to exit and log back in
sudo usermod -a -G docker ec2-user

# back as ec2-user

sudo systemctl enable docker
sudo systemctl start docker

# docker-compose setup
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# set perms for all to use
sudo chmod +x /usr/local/bin/docker-compose

# log off for docker group changes to take effective

# log back on
# as ec2-user
whoami
# ec2-user

docker --version

# test ec2-user running docker as non root user
docker ps
```
