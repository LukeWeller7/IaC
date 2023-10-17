# Playbooks in Ansible

### How to create / Key information
1. Ensure that you are on your Ansible controller instance.
2. Go to the Ansible folder
```
cd /etc/ansible
```
3. Create playbooks with the nano command
```
sudo nano playbookname.yml
```
4. Enter in the playbook you wish and save
5. Run the playbook
```
sudo ansible-playbook playbookname.yml
```

### Example Playbook interface
```yaml
# Create a playbook to provision nginx web server in the web-node
---
# Yaml/yml file starts with three dashes
# where do you want to install or run this playboo
- hosts: web

# find the facts (see the logs) - optional
  gather_facts: yes

# provide admin access to this playbook - use sudo
  become: true

# provide the actual instructions - install nginx
  tasks:
  - name: provision/install/configure Nginx
    apt: pkg=nginx state=present

# ensure nginx is running/enable
```
- For indentation, use two spaces rather than tab
- You can write multiple arguments on the same line or part of indentation. Example:
```yaml
  - name: provision/install/configure Nginx
    apt: pkg=nginx state=present
```
```yaml
  - name: provision/install/configure Nginx
    apt: 
      pkg: nginx 
      state: present
```

### What are playbooks?

- An Ansible Playbook is a blueprint of automation tasks, which are IT actions carried out with minimal manual effort across a set of IT technologies. Playbooks instruct Ansible on what to do with which devices.
- More information: 
https://www.redhat.com/en/topics/automation/what-is-an-ansible-playbook#how-to-use-ansible-playbooks

### Why us playbooks?

- Rather than manually performing the same action on hundreds or thousands of identical technologies across IT environments, executing a script performs the same action for the specified type of inventory—for example, a collection of routers. Playbooks can also be used as frameworks of prewritten code that developers can utilise on the fly or as a starting point.


### What is YAML?

- YAML is a human-readable data serialization language that is often used for writing configuration files. Depending on whom you ask, YAML stands for yet another markup language or YAML ain’t markup language (a recursive acronym), which emphasizes that YAML is for data, not documents. 
- More information: 
https://www.redhat.com/en/topics/automation/what-is-yaml