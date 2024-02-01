$vmname="myvm"
$rgname="myrg"
$cred=get-credential

New-AzResourceGroup -name $rgname -location centralindia
New-AzVM -name $vmname -ResourceGroupName $rgname -Image Ubuntu2204 -Credential $cred -PublicIpAddressName myPubIP -OpenPorts 22,8080
Get-AzPublicIpAddress -Name myPubIP # for accessing jenkins webapp

###script to install jenkins:
$inlineScript = @"
#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jre -y
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
"@ 

# Run the command on the VM
Invoke-AzVMRunCommand -ResourceGroupName $rgname -VMName $vmname -CommandId 'RunShellScript' -scriptstring $inlineScript


#cleanup
Remove-AzResourceGroup -Name $rgname  