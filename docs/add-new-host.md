# Adding a new host

Follow this guide to add a new host to be controlled by out Ansible infrastructure/

## 1. Connect to the host over SSH

Follow [this guide](https://www.digitalocean.com/community/tutorials/how-to-connect-to-your-droplet-with-ssh) to find out how to do so.

You should be connecting using the **root** user with a **password**.

The password doesn't have to be secure because we will be removing it later.

## 2. Add host to inventory and set up DNS

Add the host to the inventory files required **except the okay inventory file**, we will do that later.

If you'd like to add a nice looking .davison.io hostname instead of the IP address you'll need to set up the DNS too.

## 3. Run the add-new-host playbook

Firstly, make sure that you have an active SSH connection (root) as shown above. This is so that if Ansible screws up we can fix things using this connection.

On *Ansible Controller* run the required playbook on the host you added in step 2:
```
$ ansible-playbook plays/other/add-new-host.yml -l davisonio-example.davison.io --ask-pass
```
- Enter the **root user password**
- Enter the **root user password** again (for the sudo password)
- Enter the vault password

This playbook will lock down the root user and then run the user and openssh roles.

## 4. Check everything's okay

Add this host to okay_base and any under any other headings for what we want to add to this host. Then run the 'okay' playbook and hopefully everything should be 'okay' on all hosts including the new one you added:
```
$ ansible-playbook plays/okay.yml
```
