# Personal Digital Infrastructure

> Personal Digital Infrastructure

My server automation and other digital tools.

* DigitalOcean - cloud servers, DNS
* Ansible - configuration automation

## Install

macOS control machine:

```
git clone https://github.com/davisonio/personal-digital-infrastructure
pip install ansible
```

## Run

```
ansible-playbook main.yml
```

Other playbooks:
* For new hosts `new.yml` with ``--ask-pass`` if needed

New DigitalOcean Droplets:
* latest Ubuntu
* private networking
* monitoring
* IPv6
* craig SSH key
* based in LON1
* add volume if necessary

## Credits

**[Craig Davison](https://davison.io)**

[![GitHub](https://img.shields.io/github/followers/davisonio.svg?style=social&label=Follow%20@davisonio)](https://github.com/davisonio) [![Twitter](https://img.shields.io/twitter/follow/davisonio.svg?style=social)](https://twitter.com/davisonio)

...and [contributors](https://github.com/davisonio/personal-digital-infrastructure/graphs/contributors).

**[Contributions are welcome!](https://github.com/davisonio/personal-digital-infrastructure/blob/master/contributing.md)**

## License

Unless otherwise stated:
- Copyright © 2015+ [Craig Davison](https://davison.io). Licensed under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).
