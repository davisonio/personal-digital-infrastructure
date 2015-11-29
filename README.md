# davison.io DevOps

> Development operations & infrastructure managing [davison.io](http://davison.io) and related sites. Powered by [Ansible](http://www.ansible.com/).

<p align="center">
<b><a href="#usage">Usage</a></b>
·
<b><a href="#further-reading">Further Reading</a></b>
·
<b><a href="#todo">Todo</a></b>
·
<b><a href="#authors">Authors</a></b>
·
<b><a href="#credits">Credits</a></b>
</p>

<p align="center">
<a href="https://travis-ci.org/davisonio/davison.io-devops"><img src="https://img.shields.io/travis/davisonio/davison.io-devops.svg?style=flat-square"/></a>
</p>

{{introduction}}

## Usage
- [Add a new host](https://github.com/davisonio/davison.io-devops/blob/master/docs/setup-host.md)
- [Setup Ansible Controller](https://github.com/davisonio/davison.io-devops/blob/master/docs/setup-controller.md)

### What are 'Always' tasks?

'Always' tasks are idempotent, meaning if you run them again, **they will make only the changes they must in order to bring the system to the desired state**. This makes it very safe to rerun the same playbook multiple times. They won't change things unless they have to change things. - Ansible Docs

- **inventory/always** defines which hosts use 'always' tasks
- **always.yml** is a playbook which runs all always tasks on all hosts. You can consider this the root/main playbook which does everything.

The opposite of 'Always' tasks are 'one-off' tasks. One-off tasks are performed manually and are usually idempotent.

## Further reading

### Articles

- [Official Ansible Documentation](https://docs.ansible.com/ansible/index.html)
- [Ansible Best Practices](https://docs.ansible.com/ansible/playbooks_best_practices.html)
- [6 practices for super smooth Ansible experience](http://hakunin.com/six-ansible-practices)
- [Ansible (Real Life) Good Practices](https://www.reinteractive.net/posts/167-ansible-real-life-good-practices)
- [A short tutorial on how to use Vault in your Ansible workflow](https://gist.github.com/tristanfisher/e5a306144a637dc739e7)

### Inspiration

- [webmat/devopsmtl.com](https://github.com/webmat/devopsmtl.com)
- [openaustralia/infrastructure](https://github.com/openaustralia/infrastructure)
- [CenterForOpenScience/cos-ansible-base](https://github.com/CenterForOpenScience/cos-ansible-base)
- [henrysher/fedora-infra-ansible](https://github.com/henrysher/fedora-infra-ansible)
- [galaxyproject/usegalaxy-playbook](https://github.com/galaxyproject/usegalaxy-playbook)
- [ceph/ceph-cm-ansible](https://github.com/ceph/ceph-cm-ansible)
- [Orain/ansible-playbook](https://github.com/Orain/ansible-playbook)
- [edunham/ansible-rust-infra](https://github.com/edunham/ansible-rust-infra)

## Todo

- [ ] travis tests
- [ ] apt: sources.list support
- [ ] add contributing.md

## Authors

**[Craig Davison](http://davison.io)**
[![GitHub followers](https://img.shields.io/github/followers/davisonio.svg?style=social&label=Follow)](https://github.com/davisonio)

With many thanks to the [contributors](https://github.com/davisonio/davison.io-devops/graphs/contributors) :clap:

For details on how to help, see the [Contributing Guidelines](https://github.com/davisonio/davison.io-devops/blob/master/CONTRIBUTING.md).

## Credits

Unless otherwise stated:

- Copyright © 2015+ [Craig Davison](http://davison.io). Released under the [MIT License](http://davisonio.mit-license.org).
