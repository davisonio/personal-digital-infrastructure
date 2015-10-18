# Setup Ansible Controller

The Ansible Controller is the main machine which is used to coordinate the tasks for all hosts in its inventory. Setting up the Ansible Controller using Ansible wouldn't be possible without another Ansible Controller so you'll have to do a few steps here manually :)

See also: *[setup-local-dev-env.md](https://github.com/davisonio/infrastructure/blob/master/docs/setup-local-dev-env.md)*

## 1. Prerequisites

- You should be logged into the controller via SSH
- Python 2.6 or 2.7 should be installed
- Have git installed

## 2. Get Latest Release

**Ubuntu APT:**

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

## 4. Download infrastructure from GitHub

```
$ git clone https://github.com/davisonio/infrastructure
$ cd infrastructure
```
## 5. Final steps TODO
- SSH keys
- DNS check in inventory
- vault
