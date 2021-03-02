#!/bin/bash

echo
echo
echo "~~~~~~demo prep python en for ec2-ami"
date
echo
echo "~~~~~~ as user: ec2-user"

###################################################
# run this as ec2-user
# echo "~~~~~~ optional - setup django virtual env"
###################################################

sudo yum install python3-pip -y
sudo pip3 install django
sudo pip3 freeze
sudo pip3 install virtualenv
whereis virtualenv
cd ~
virtualenv djangoenv2
# # OR /usr/local/bin/virtualenv djangoenv

# creates env in: ~/djangoenv/ .
source ~/djangoenv/bin/activate
pip3 install --upgrade Django==2.*
python -m django --version

# to exit env
deactivate

# create second env - for dev work
virtualenv djangoenv2
source ~/djangoenv2/bin/activate
pip3 install --upgrade Django

django --version
python -m django --version

sudo pip3 install djangorestframework
django-admin --version

# MUST UPDATE sqlite3
wget https://kojipkgs.fedoraproject.org//packages/sqlite/3.8.11/1.fc21/x86_64/sqlite-3.8.11-1.fc21.x86_64.rpm
sudo yum install sqlite-3.8.11-1.fc21.x86_64.rpm -y
sqlite3 --version

# to exit
deactivate

#### to get in dev env the run command:
source ~/djangoenv2/bin/activate
