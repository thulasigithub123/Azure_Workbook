# Azure Networking | Virtual Network | Firewall Policies | NSG and Bastion | Hosting Nginx WebApp from Ubuntu VM
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/3e490014-cd05-4d55-8015-abf71413c4b7)

## Steps:

1. Create Resource group
2. Create Virtual Network
   - With default subnet
   - Firewall and its subnet
   - With firewall policies
   - Bastion and with Bastion subnet
3. Create VM
   - Ubuntu Server 20.04 LTS x64
   - 1GiB RAM
   - Configure SSH-based authentication
   - NSG to allow SSH and HTTP connections
4. Use Bastion to access the VM using private IP
5. Configure the VM with Nginx and host an app
   - `sudo su -`
   - `apt update`
   - `apt install nginx -y`
   - `cd /var/www/html`
   - `vi index.html` => Save frontend content
6. To use the hosted app, configure the firewall rules to allow TCP 80 through DNAT rules
   - Source -> Host machine of user
   - Destination -> Firewall public IP
   - Translation IP -> Private IP of the VM instance
   - Translation Port -> 80, where Nginx service is exposed

Azure Bastion is a service provided by Microsoft Azure that allows secure and seamless Remote Desktop Protocol (RDP) and Secure Shell (SSH) access to virtual machines (VMs) in the Azure cloud. It eliminates the need for a public IP address assignment to individual VMs, which enhances security by reducing exposure to the public internet.

Network Security Groups are a fundamental element of the Azure networking architecture used to control inbound and outbound traffic to network interfaces (NIC), VMs (Virtual Machines), and subnets. NSGs are essentially a set of rules that allow or deny network traffic based on source IP address, destination IP address, port, and protocol.

## Inference:

Azure Virtual Network is the private space, subnet is like dividing it into rooms, firewall is the security guard at the entrance, and Azure Bastion is a secret and safe entrance to get inside. Together, they help keep things organized, secure, and make sure only the right people have access to the information and activities inside the virtual space.
