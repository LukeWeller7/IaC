# Guide on Setting up ansible and nodes

1. Create 3 instances on EC2  (Ansible Controller, app, db)
2. SSH into each on seperate git bash terminals  
3. For the Ansible controller enter the following commands:
```
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
cd ~/.ssh
```
3b. Optional:
```
sudo apt install tree
ansible --version
cd /etc/ansible/
```
- Tree will give a better visual aid on the folder structure   
- --version will show the ansible version.  
- cd into ansible folder to find hosts, roles, and config file


4. On a new Git Bash Terminal
```
scp -i "~/.ssh/file.pem" ~/.ssh/file.pem ubuntu@<Public IP>:~/.ssh
```
- This command will securely copy the .pem file to each instance dependant on IP. Complete this for each instance.

5. Back in the Controller instance. Go to .ssh folder and type ls -l to check that the file.pem is there. Change the permissions to read only from User.
```
sudo chmod 400 file.pem
```
- This makes the file read only for User.

6. Now you should be able to SSH into other instances from Ubuntu using the same connect command.
```
ssh -i "file.pem" ubuntu@<Public DNS>
```

sudo ansible web -m ping
sudo nano hosts

[web]

ec2-instance ansible_host=54.171.81.99 ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/.ssh/tech254.pem

sudo ansible web -a "uname -a"

sudo nano install-nginx.yml



Using yml (two spaces for indentation)
ensure tasks not task


### Why ansible


### Why aplaybook


### benefits


### 