# Ansible Controller Guide


## Setting up Ansible and Nodes
1. Create 3 instances on EC2  (Ansible Controller, app, db)
2. SSH into all 3 instances
3. Update and Upgrade all 3 instances
```
sudo apt update -y
sudo apt upgrade -y
``` 
4. For the Ansible controller enter the following commands to set-up:
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
```
4b. Optional commands:
```
sudo apt install tree # Tree will give a better visual aid on the folder structure

ansible --version # will show the ansible version.
```
5. On a new Git Bash Terminal securly copy the file.pem to instances. Complete this for each instance.
```
scp -i "~/.ssh/file.pem" ~/.ssh/file.pem ubuntu@<Instance Public IP>:~/.ssh
``` 
6. Check that the file.pem is copied across by accessing the .ssh folder
```
cd ~/.ssh/
```
7. In the .ssh folder type `ls -l` to check the file.pem permissions, we need read only for User. Change the permissions using chmod. Complete this for each instance.
```
sudo chmod 400 file.pem
```
7. Now you should be able to SSH into other instances from Ansible controller using the same connect command to connect to instances. Do this for both app and db.
```
ssh -i "file.pem" ubuntu@<Public DNS>
```
8. Once you have checked the ssh connection, you leave the app/db node.
```
exit
```
## Setting up hosts
1. Go to Ansible folder
```
cd /etc/ansible
```
2. Nano into the file called hosts
```
sudo nano hosts
```
3. Inside the hosts file, add the endpoints for both app and db. If one option doesn't work, try the other.
```
[web]

ec2-instance ansible_host=<Instance Public IP> ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/.ssh/file.pem

or

[web]

ec2-instance ansible_host=<Instance Public IP> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/file.pem
```
4. Exit and Save
5. Ping the instance to check connection
```
sudo ansible web -m ping
```