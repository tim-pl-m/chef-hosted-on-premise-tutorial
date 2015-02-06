chef on premise tutorial
===============

-thanks to o'reilly and mischa taylor for the book 'learning chef'

-register and manage: https://manage.chef.io
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
[vagrant@node-centos65 ~]$ sudo sh -c "echo '192.168.33.35 node-centos65.api.opscode.com/organizations/test151234' >> /etc/hosts"
[vagrant@node-centos65 ~]$ exit
kitchen create
knife bootstrap --sudo --ssh-user vagrant --ssh-password vagrant --no-host-key-verify node-centos65.api.opscode.com/organizations/test151234
```

important chef commands:
vagrant global-status 
	show running vms
knife client list
	check connection to server
kitchen list
	test .yaml file for syntax errors







