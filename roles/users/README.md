Stouts.users
============

[![Build Status](http://img.shields.io/travis/Stouts/Stouts.users.svg?style=flat-square)](https://travis-ci.org/Stouts/Stouts.users)
[![Galaxy](http://img.shields.io/badge/galaxy-Stouts.users-blue.svg?style=flat-square)](https://galaxy.ansible.com/list#/roles/1210)

Ansible role which Manage users and groups

#### Variables
```yaml
users_enabled: yes              # The role is enabled

users_groups: []                # Create groups
                                # Simple syntax:
                                #   users_groups: [name1, name2]
                                # Complex syntax:
                                #   users_groups:
                                #     - name: name1
                                #       system: yes
                                #     - name: name2

users_users: []                 # Create users
                                # Simple syntax:
                                #   users_users: [name1, name2]
                                # Complex syntax:
                                #   users_users:
                                #     - name: name1
                                #       groups: admin,sudo
                                #       shell: /bin/zsh

users_ssh_keys: []              # Assign allowed keys to users
                                #   users_ssh_keys:
                                #   - name: username1
                                #     authorized:
                                #     - ssh-rsa KEY-WILL-BE-ADDED-TO-AUTHORIZED-KEYS
                                #     - ssh-rsa KEY-WILL-BE-ADDED-TO-AUTHORIZED-KEYS
                                #   - name: username2
                                #     authorized:
                                #      - ssh-rsa KEY-WILL-BE-ADDED-TO-AUTHORIZED-KEYS

users_to_install: []            # List of usernames. If not empty only users from the list will be installed.
                                # So that way you could keep a huge list of users somewhere and install only
                                # some of them in special environments.

users_shell: /bin/bash          # Default user shell

users_remove_users: []          # List of user names which will be removed
users_remove_groups: []         # List of group names which will be removed
```

#### Usage

Add `Stouts.users` to your roles and set vars in your playbook file.

Example:

```yaml

- hosts: all

  roles:
    - Stouts.users

  vars:
    users_groups: [admin]
    users_users: [tom, jerry]
    users_ssh_keys:
    - name: tom
      authorized: 
      - ssh-rsa KEY-HERE
    - name: jerry
      authorized: 
      - ssh-rsa KEY-HERE

```

#### License

Licensed under the MIT License. See the LICENSE file for details.

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/Stouts/Stouts.users/issues)!

