# Infrastructure as Code

### What is IaC?

- Infrastructure as Code (IaC) is the managing and provisioning of infrastructure through code instead of through manual processes.
- You can automate processes alot faster rather than manually completing them. 
- You can easily scale up the process as well

### Why is IaC useful?

- Cost reduction
- Increase in speed of deployments
- Reduce errors 
- Improve infrastructure consistency
- Eliminate configuration drift

### What is Configuration Management?

- Configuration management is a process for maintaining computer systems, servers, applications, network devices, and other IT components in a desired state. It’s a way to help ensure that a system performs as expected, even after many changes are made over time. 

### What is Orchestration?

- Orchestration is the automated configuration, management, and coordination of computer systems, applications, and services. Orchestration helps IT to more easily manage complex tasks and workflows.

### IaC Diagram

![](images/IaC-diagram.png)

Infrastructure currently on cloud (can be on premises as well), we can use Ansible Controller to SSH in VM to to make any updates. Ansible has a vault authentication that connect t the cloud providers to access login details