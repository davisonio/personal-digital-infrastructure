# davison.io's Infrastructure

Ansible roles, playbooks, scripts and other things powering [davison.io](http://davison.io)

## Project structure

An overview of what's included here and where you can find it.

- **docs/** - Documentation
- **production/** - `List of hosts managed by ansible in production with variables`
  - **group_vars/** - `Variables which are set for specific groups (defined in inventory)`
    - **example_group/**
      - **main.yml** - `Main, public variables`
      - **secrets.yml** - `Secret, private variables which are encrypted using ansible-vault`
    - ...
  - **host_vars/** - `Variables which are set for specific hosts (defined in inventory)`
    - **davisonio-example.davison.io/**
      - **main.yml** - `Main, public variables`
      - **secrets.yml** - `Secret, private variables which are encrypted using ansible-vault`
    - ...
  - **project** - `Hosts organised by project (e.g. groups here are davisonio-project1, davisonio-project2)`
  - **okay** - `Hosts organised by 'okay' (e.g. groups here are okay_nginx, okay_common)`
- **plays/** - `Playbooks`
  - **other/** - `Other playbooks that have to be run manually`
  - **okay.yml** - `Master playbook which check that everything is 'okay' on all hosts (see definition below)`
- **roles/** - `Roles`
  - **example**
    - defaults/
      - main.yml - `Variables use on hosts by default`
      - secrets.yml - `Secret variables used on hosts by default, encrypted using ansible-vault`
    - files/
      - example.conf - `Example file used in tasks`
    - templates/
      - example.j2 - `Example template used in tasks`
    - tasks/
      - main.yml - `The main task file which in run first`
      - another.yml - `Another task file which isn't run automatically when specifying the role.`
    - handlers/
      - main.yml - `Mostly used to restart services using 'notify:'`
    - meta/
      - main.yml - `Dependencies, etc.`
  - ...

##### What does 'okay' mean?

'Okay' tasks are idempotent, meaning if you run them again, **they will make only the changes they must in order to bring the system to the desired state**. This makes it very safe to rerun the same playbook multiple times. They won’t change things unless they have to change things. - Ansible Docs

## Usage

- [Setup local development environment](https://github.com/davisonio/infrastructure/blob/master/docs/setup-local-dev-env.md)
- [Setup Ansible Controller](https://github.com/davisonio/infrastructure/blob/master/docs/setup-controller.md)
- [Add a new host](https://github.com/davisonio/infrastructure/blob/master/docs/add-new-host.md)
- Travis tests TODO
- when: "inventory_hostname in groups['okay_base']"
- when: "'ping' in {{ role_names}}"
- update-manager + do-release-upgrade role
- bootstrap play

## Official Docs

- [Ansible Documentation](https://docs.ansible.com/ansible/index.html)

## License

Unless otherwise stated:
```
Copyright (c) 2015 Craig Davison <craig@davison.io>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
```
