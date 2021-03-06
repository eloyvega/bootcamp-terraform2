#!/bin/bash
 
yum update -y
yum install -y docker
service docker start
usermod -a -G docker ec2-user
docker run -d -p 80:80 --restart=always httpd:latest