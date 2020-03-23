# Personal Digital Infrastructure

> Personal Digital Infrastructure

How I deploy, manage and configure my digital infrastructure. Using:
* DigitalOcean - Cloud Servers & DNS
* Ansible - Configuration Automation
* Terraform - Infrastructure Automation
* [terraform-inventory](https://github.com/adammck/terraform-inventory)

## Install

On macOS control machine:

```sh
git clone https://github.com/davisonio/personal-digital-infrastructure
pip3 install ansible
brew install terraform terraform-inventory
```
Set this in your `.zshrc`
```sh
export TF_STATE=.
```

## Usage

To change infrastructure:
```
terraform apply
```
Newly created/changed infrastructure will run provisions which may include changing configuration.

To change configuration:
```
ansible-playbook plays/<name>.yml
```

Secrets are stored in `secrets.auto.tfvars`.

## Credits

**[Craig Davison](https://davison.io)**

[![GitHub](https://img.shields.io/github/followers/davisonio.svg?style=social&label=Follow%20@davisonio)](https://github.com/davisonio) [![Twitter](https://img.shields.io/twitter/follow/davisonio.svg?style=social)](https://twitter.com/davisonio)

+ [contributors](https://github.com/davisonio/personal-digital-infrastructure/graphs/contributors).
