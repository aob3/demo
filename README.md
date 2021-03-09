# Poblem solving responses: demo and related files

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

###### setup on new aws-ec2-ami
# create free tier aws ami
# login as ec2-user
whoami

# get git
sudo yum install git -y

# create dev working dir
cd ~
mkdir dev
cd dev
pwd

# download repo demo
git clone https://github.com/aob3/demo.git

cd demo
ls -la

# run setup script with sudo 
sudo ./demo_prep_setup.sh

# log out of terminal 
# log back in as ec2-user
# try docker
docker ps

# run python env setup
# as: es2-user
sudo ./demo_prep_setup.sh

cd ~/dev/demo
./demo_prep_devenv.sh


# run app
docker-compose up -d

# may need to
echo "/usr/bin/mate-session" > ~/.Xclients
chmod +x ~/.Xclients


```
