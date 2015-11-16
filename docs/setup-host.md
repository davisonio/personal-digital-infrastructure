# Setup Host

Follow this guide to setup a new host to be controlled by Ansible

## 1. Connect to the host over SSH

Follow [this guide](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh) to find out how to do so.

You should be connecting using the **root** user with a **password**.

The password doesn't have to be secure because we will be removing it later.

## 2. Install python

Python is required to be on the host so that Ansible can run.

``
$ apt-get install python
``

## 3. Add host to inventory and set up DNS

Add the host to any required inventory files.
**Don't add to the always inventory file, we will do that later.

If you'd like to add a nice looking .davison.io hostname instead of the IP address you'll need to set up the DNS too.

## 4. Run the setup-host playbook

Firstly, make sure that you have an active SSH connection (root) as shown above. This is so that if something goes wrong we can fix things using this connection.

On *Ansible Controller* run the required playbook on the host you added in step 2:

```
$ ansible-playbook plays/setup-host.yml -l davisonio-example.davison.io --ask-pass
```
- Enter the **root user password**
- Enter the **root user password** (again for the sudo password)
- Enter the vault password

This playbook will lock down the root user and then run the user and openssh roles.

## 5. Run always playbook

You can now add this host to the always inventory file.

Add the host under the headings for what 'always' tasks we want to run on the host. You almost definitely want to add the host under the 'always_base' header to make sure that base operations are always carried out.

Then run the 'always' playbook and hopefully everything should be working on all hosts including the new one you added:
```
$ ansible-playbook always.yml
```
