## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.
![DSS](https://user-images.githubusercontent.com/97314199/175435840-253e77f1-7918-46c4-8bd8-f0ba053aabb1.png)


!~/Desktop/DDS

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the configurarion and yaml files may be used to install only certain pieces of it, such as Filebeat.

- [Ansible.cfg](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Ansible.cfg)
- [Elkvm.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Elkvm.yml)
- [Filebeat-configuration.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Filebeat-configuration.yml)
- [Filebeat-playbook.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Filebeat-playbook.yml)
- [Hosts](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Hosts)
- [Metricbeat-configuration.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Metricbeat-configuration.yml)
- [Metricbeat-playbook.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Metricbeat-playbook.yml)
- [Pentest.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Pentest.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficiete and accessible, in addition to restricting unauthorized access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the activity logs and system changes.
- Filebeat is a lightweight shipper for forwarding and centralizing log data. This means that Filebeat monitors the information in a file system and it logs the file and any changes made to the file if it notices any changes it will report on what was changed and when. It is a watch tool for monitoring the system.
- Metricbeat collects data on a server and sends the results to an output that the admin.user specifies. The admin.user can then analyze that data and statistics gathered by Metricbeat to make critical plans to handle the maintance of the servers


The configuration details of each machine may be found below.

| Name               | Function   | IP Address    | Operating System |
|--------------------|------------|---------------|------------------|
| JumpBoxProvisioner | Gateway    | 104.43.138.81 | Linux            |
| Web-1              | Server     | 10.0.0.5      | Linux            |
| Web-2              | Server     | 10.0.0.6      | Linux            |
| Elk Server         | Elk Server | 20.65.93.224  | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBoxProvisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Personal IP Address

Machines within the network can only be accessed by the Admin User of the JumpBoxProvisioner.

A summary of the access policies in place can be found in the table below.

| Name               | Publicly Accessible | IP Address    |
|--------------------|---------------------|---------------|
| JumpBoxProvisioner | Yes                 | 104.43.138.81 |
| Web-1              | No                  | 10.0.0.5      |
| Web-2              | No                  | 10.0.0.6      |
| Elk Server         | Yes                 | 20.65.93.224  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows the best use of time. This will allow for the creation of multiple machines without loosing the valuable resource of time to configure each of them.

The playbook implements the following tasks:
- Create New Virtual Net
- Create Peering Rules
- Create Ansible Playbook
- Download Configuration to Container
- Launch Container

- Create New Virtual Network
![Step 1](https://user-images.githubusercontent.com/97314199/175446652-a5d703b7-e208-4583-9bd0-44deb34ff800.png)

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
![ElkDockerPS](https://user-images.githubusercontent.com/97314199/175448398-a09ddd15-f3d8-4dfc-8b50-732e2d82a6f3.png)




### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.0.5
- Web-2 10.0.0.6

We have installed the following Beats on these machines:
- Filebeats
- Metricbeats

These Beats allow us to collect the following information from each machine:

- Filebeat is a lightweight shipper for forwarding and centralizing log data. This means that Filebeat monitors the information in a file system and it logs the file and any changes made to the file if it notices any changes it will report on what was changed and when. It is a watch tool for monitoring the system.
- Metricbeat collects data on a server and sends the results to an output that the admin.user specifies. The admin.user can then analyze that data and statistics gathered by Metricbeat to make critical plans to handle the maintance of the servers.


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the  [Elkvm.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Elkvm.yml), [Filebeat-configuration.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Filebeat-configuration.yml), [Metricbeat-configuration.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Metricbeat-configuration.yml) file to the ansible container.
- Copy the [Filebeat-playbook.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Filebeat-playbook.yml) and the [Metricbeat-playbook.yml](https://github.com/nmuhammad22/UPennProject1/blob/main/Project1/Ansible/Filebeat-playbook.yml) the Ansible container.
- Update the /etc/ansible/host file to include the Elk Server IP 10.1.0.4
- Run the playbook, and navigate to Kibana to check that the installation worked as expected. The following link would be used: http://[your.vm.ip]:5601/app/kibana

- _Which file is the playbook? Where do you copy it?_ ansible-playbook filebeat-playbook.yml ansible-playbook metricbeat-playbook.yml
- _Which file do you update to make Ansible run the playbook on a specific machine?_ How do I specify which machine to install the ELK server on versus which to install Filebeat on? Navigate to /etc/ansible/host edit the file to add webserver/elkserver ip address.
- _Which URL do you navigate to in order to check that the ELK server is running?_ http://[ELK-VM.Public IP]:5601/app/kibana




_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

| COMMAND                                                 | DESCRIPTION                                                   |
|---------------------------------------------------------|---------------------------------------------------------------|
| ssh [username]@[JumpBoxProvisioner IP]                  | Connects to JumpBoxProvisioner                                |
| ssh-keygen                                              | Generates Public/Private Key Pair                             |
| cat ~./ssh_/id_rsa.pub                                  | Cats Public/Private Key Pair                                  |
| sudo docker container list -a                           | Lists The Containers On The Machine                           |
| sudo docker start [container name]                      | Starts The Named Container                                    |
| sudo docker attach [container name]                     | Attaches The Named Container                                  |
| Exit                                                    | Exits The Container (Exit A Second Time Exits Ansible)        |
| cd /etc/ansible                                         | Changes Directory To /etc/ansible                             |
| nano /etc/ansible/(hosts)                               | Opens Ansible (Hosts) File to Edit                            |
| nano /etc/ansible/ansible.cfg                           | Opens Ansible Config File To Edit                             |
| nano filebeat-config.yml nano filebeat-playbook.yml     | Opens Filebeat File To Edit Opens Filebeat Playbook To Edit   |
| nano metricbeat-config.yml nano metricbeat-playbook.yml | Opens Metricbeat File To Edit Opens Filebeat Playbook To Edit |
| ansible-playbook [filename.yml]                         | Executes The Playbook                                         |
