chef hosted on premise with kitchen tutorial
===============

-thanks to o'reilly and mischa taylor for the book 'learning chef'

-register and manage: https://manage.chef.io

❑ what problem to solve
❑ how to use
-download chef-starter for your account

verify your setup:
```bash
knife ssl check 
knife client list
```

create the node(bootstrap):
```bash
sudo sh -c "echo '192.168.33.35 node-centos65.api.opscode.com/organizations/test151234' >> /etc/hosts"
cd chef-repo/cookbooks/node
kitchen converge
kitchen login
[vagrant@node-centos65 ~]$ sudo sh -c "echo '192.168.33.35 default-centos65.api.opscode.com/organizations/test151234' >> /etc/hosts"
[vagrant@node-centos65 ~]$ exit
kitchen create
knife bootstrap --sudo --ssh-user vagrant --ssh-password vagrant --no-host-key-verify node-centos65.api.opscode.com/organizations/test151234
```
-to verify login to https://manage.chef.io/organizations/test151234/nodes

suspend and reactivate the node:
```bash
cd /chef-repo/cookbooks/node/.kitchen/kitchen-vagrant/node-centos65 
vagrant suspend
vagrant up
```

important chef commands:
vagrant global-status 
	show running vms
knife client list
	check connection to server
kitchen list
	test .yaml file for syntax errors







