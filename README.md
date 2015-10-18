# davison.io's Infrastructure

Ansible roles, playbooks, scripts and other things powering [davison.io](http://davison.io)

## Project structure

An overview of what's included here and where you can find it.

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
- **inventory/** - `List of hosts managed by ansible`
  - **project** - `Hosts organised by project (e.g. groups here are davisonio-project1, davisonio-project2)`
  - **okay** - `Hosts organised by 'okay' (e.g. groups here are okay_nginx, okay_common)`
- **plays/** - `Playbooks`
  - **okay/** - `Automatically run by okay.yml but can be run individually.`
  - **other/** - `Seperate playbooks that have to be run manually`
  - **okay.yml** - `Master playbook which check that everything is 'okay' on all hosts (runs all playbooks in okay/ folder)`
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
      - okay.yml - `Another task file. Only run when, for example, okay tag is specified.`
    - handlers/
      - main.yml - `Mostly used to restart services using 'notify:'`
    - meta/
      - main.yml - `Dependencies, etc.`
  - ...

##### What does 'okay' mean?
'Okay' means 'check that everything is working correctly'.

For example:
- I add a host to the okay_nginx group (in inventory/okay)
- I run okay.yml which then;
- causes okay_role_nginx.yml to run which then;
- runs all tasks from the nginx role

Once all the tasks have completed we can consider everything to be `okay` because all tasks have been checked through.

## Usage

- [Setup local development environment](https://github.com/davisonio/infrastructure/blob/master/docs/setup-local-dev-env.md)
- [Setup Ansible Controller](https://github.com/davisonio/infrastructure/blob/master/docs/setup-controller.md)
- Adding a new host TODO

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
