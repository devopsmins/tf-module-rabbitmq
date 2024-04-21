#!/bin/bash

#yum install ansible python3.11-pip.noarch -y | tee -a /opt/userdata.log
#pip3.11 install botocore boto3 | tee -a /opt/userdata.log
#yum install ansible -y
#!/bin/bash

ansible-pull -i localhost, -U https://github.com/devopsmins/roboshop-ansible roboshop.yml -e role_name=rabbitmq -e env=${env} | tee -a /opt/userdata.log

