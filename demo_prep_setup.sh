#!/bin/bash

echo "demo prep ec2-ami"
echo "run as user: root"

echo "whoami: " `whoami`

yum update -y
yum install git -y

yum install -y gcc openssl-devel bzip2-devel libffi-devel
sudo amazon-linux-extras install epel -y


python --version

echo "mysql client not needed - but is nice"

yum install mysql -y

mysql --version

sudo amazon-linux-extras install docker -y

sudo usermod -a -G docker ec2-user


sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo systemctl enable docker
sudo systemctl start docker


sudo amazon-linux-extras install mate-desktop1.x 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm 
sudo yum install -y ./google-chrome-stable_current_*.rpm

sudo amazon-linux-extras install epel
sudo yum install chromium

yum install xorg-x11-xauth
yum install xclock xterm

sudo amazon-linux-extras install mate-desktop1.x
sudo bash -c 'echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop'
echo "/usr/bin/mate-session" > ~/.Xclients && chmod +x ~/.Xclients



###################################################
# optional - setup django virtual env
###################################################

# sudo yum install python3-pip -y
# pip3 install django
# pip3 freeze
# sudo pip3 install virtualenv
# whereis virtualenv
# cd ~
# virtualenv djangoenv
# # OR /usr/local/bin/virtualenv djangoenv

# # creates env in: ~/djangoenv/ .
# source ~/djangoenv/bin/activate
# pip3 install --upgrade Django==2.*
# python -m django --version

# # to exit env
# # deactivate


# # create second env - for dev work
# source ~/djangoenv2/bin/activate
# pip3 install --upgrade Django
# python -m django --version
# # to exit
# # deactivate

###################################################
###################################################





