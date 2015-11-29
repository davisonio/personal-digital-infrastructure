# Setup Ansible Controller

The Ansible Controller is the main machine which is used to coordinate the tasks for all hosts in its inventory.

## 1. Prerequisites

- You should be logged into the controller via SSH
- Python and git should be installed

## 2. Get Latest Release

```
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

## 3. Prepare operating location (/etc/ansible recommended)

```
$ cd /etc/ansible
$ sudo rm ansible.cfg hosts
```

## 4. Download devops infrastructure from GitHub

```
$ git clone https://github.com/davisonio/davison.io-devops
$ cd davison.io-devops
```
## 5. Final steps TODO
- SSH keys
- DNS check in inventory
- vault
