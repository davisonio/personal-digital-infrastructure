# Personal Digital Infrastructure

> Personal Digital Infrastructure

My server automation and other digital tools.

* DigitalOcean - cloud servers, DNS
* Terraform - infrastructure automation
* Ansible - configuration automation
* [terraform-inventory](https://github.com/nbering/terraform-inventory) with [terraform-provider-ansible](https://github.com/nbering/terraform-provider-ansible)

## Install

macOS control machine:

```
git clone https://github.com/davisonio/personal-digital-infrastructure
brew install terraform
pip install ansible
wget https://github.com/nbering/terraform-provider-ansible/releases/download/v0.0.4/terraform-provider-ansible-darwin_amd64.zip -O /tmp/tfpa
mkdir -p ~/.terraform.d/plugins
unzip -d ~/.terraform.d/plugins /tmp/tfpa     
rm /tmp/tfpa
terraform init
```

## Run

```
terraform plan
terraform apply
ansible-playbook main.yml
```

If running ansible on newly created resources `-u root` may have to be used.

## Credits

**[Craig Davison](https://davison.io)**

[![GitHub](https://img.shields.io/github/followers/davisonio.svg?style=social&label=Follow%20@davisonio)](https://github.com/davisonio) [![Twitter](https://img.shields.io/twitter/follow/davisonio.svg?style=social)](https://twitter.com/davisonio)

...and [contributors](https://github.com/davisonio/personal-digital-infrastructure/graphs/contributors).

**[Contributions are welcome!](https://github.com/davisonio/personal-digital-infrastructure/blob/master/contributing.md)**

## License

Unless otherwise stated:
- Copyright © 2015+ [Craig Davison](https://davison.io). Licensed under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).
