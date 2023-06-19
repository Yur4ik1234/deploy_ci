#!/bin/bash

terraform init
#stable version

terraform apply -auto-approve 

#ansible-playbook -i hosts.txt ansible/playbook.yaml

az vmss list-instance-public-ips --name example-vmss  --resource-group azure-resource_group | python3 parser.py > ip.txt
python3 iphost.py >> host.txt
ansible-playbook -i host.txt ansible/playbook.yaml