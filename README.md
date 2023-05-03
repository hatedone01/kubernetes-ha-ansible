# Kubernetes-HA-Ansible

This is an Ansible playbook that sets up HAProxy, Keepalived, CRI-O, and Kubernetes all at once. Before using this playbook, you must [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html "Install Ansible"), and define the number of hosts you want to use. In this example, two HAProxy servers, three controller nodes, and three worker nodes are used, all running Debian 11. If you use vmware vcenter you can check out terraform [script](https://github.com/hatedone01/terraform-kubernetes.git "script") to automate installation of VM

## 1. Download the repository:
```
git clone https://github.com/hatedone01/kubernetes-ha-ansible.git
```
## 2. Add hosts to the `hosts` file and change variables in the `vars.yaml` file.

## 3. Run the Ansible playbook. Remember to add your SSH key to all hosts:
```
ssh-copy-id root@hosts
```
Then run the playbook:
```
ansible-playbook -i hosts site.yaml --ask-become-pass
```
## 4. Kubectl is setup on the first controller node 