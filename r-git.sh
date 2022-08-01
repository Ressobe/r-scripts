#!/bin/bash 

email="bartosz.sobina@tutanota.com"
ssh-keygen -t rsa -b 4096 -C $email
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub