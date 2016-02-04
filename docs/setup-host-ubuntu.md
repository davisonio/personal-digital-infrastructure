# Setup Host on Ubuntu

This guide will show you how to setup a host on Ubuntu so that it can be controlled by an Ansible Controller.

## 1. Requirements

- [Ubuntu Server](http://www.ubuntu.com/server) >= **14.04**
- Logged in via SSH - [instructions](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh) (using **root** user with a **password**)
- [Python](https://www.python.org)

## 3. Set up DNS

Set up an A record following the format shown in the [main inventory file](https://github.com/davisonio/davison.io-devops/blob/master/inventory/main) and pointing to the IP address of the host.

## 4. Add to inventory

Add the hostname you created in the previous step to any required locations in the inventory files.

## 4. Run setup-host.yml

Run the setup-host playbook on the hostname:

```
$ ansible-playbook plays/setup-host.yml -e "hosts=example.davison.io" --ask-pass
```

- Enter the **root user password**
- Enter the **root user password** again
- Enter the vault password

This playbook runs the user role, runs the openssh role and then locks down root user.

## 5. Run main.yml

Run the main playbook and hopefully everything should be working on all hosts including the new one you added:

```
$ ansible-playbook main.yml
```
