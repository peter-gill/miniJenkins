#!/bin/bash

sudo yum update -y
sudo yum remove -y java
sudo yum install -y java-1.8.0-openjdk

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y

sudo service jenkins start
