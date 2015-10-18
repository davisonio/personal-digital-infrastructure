# Setup local development environment

## 1. Prerequisites

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

## 3. Prepare operating location (wherever you usually develop)

```
$ cd ~/i/develop/here
$ sudo rm unwanted files
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
- testing hosts not prod
