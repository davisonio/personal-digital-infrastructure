# davison.io DevOps

Development operations & infrastructure managing [davison.io](http://davison.io) and related sites. Powered by Ansible.

## 'Always' tasks

'Always' tasks are idempotent, meaning if you run them again, **they will make only the changes they must in order to bring the system to the desired state**. This makes it very safe to rerun the same playbook multiple times. They won’t change things unless they have to change things. - Ansible Docs

- **inventory/always** defines which hosts use 'always' tasks
- **always.yml** is a playbook which runs all always tasks on all hosts. You can consider this the root/main playbook which does everything.

## Usage
- [Add a new host](https://github.com/CraigyDavi/davison.io-devops/blob/master/docs/setup-host.md)
- [Setup Ansible Controller](https://github.com/CraigyDavi/davison.io-devops/blob/master/docs/setup-controller.md)
- [Setup local development environment](https://github.com/CraigyDavi/davison.io-devops/blob/master/docs/setup-local-dev-env.md)
- Travis tests TODO
- when: "inventory_hostname in groups['okay_base']" TODO
- when: "'ping' in {{ role_names}}" TODO
- update-manager + do-release-upgrade role TODO

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

## License

Unless otherwise stated:
```
Copyright (c) 2015 Craig Davison <craig@davison.io>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
```
