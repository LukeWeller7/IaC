# Guide on Setting up ansible and nodes

1. Create 3 instances on EC2  
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
cd /etc/ansible/
sudo apt install tree
ansible --version
```
- Tree will give a better visual aid on the folder structure   
- --version will show the ansible version.  
- cd into ansible to find the files for ansible.  


4. On a new Git Bash Terminal
```
scp -i "~/.ssh/tech254.pem" ~/.ssh/tech254.pem ubuntu@34.243.23.126:~/.ssh
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
