# Imagine you have a website or an application that needs to handle 
# varying levels of traffic. Sometimes, there might be a lot of people using it, 
# and other times, not so many. Instead of manually adjusting the number of 
# virtual machines (VMs) to handle this fluctuating load, you can use a Virtual Machine Scale Set.


# a Virtual Machine Scale Set in Azure is a way to automatically and dynamically manage a group 
# of identical virtual machines based on the current demand for your application, 
# ensuring optimal performance and resource utilization.


#get all vmss resources
Get-AzVmss | select-Object -Property Name,location,ResourceGroupName

#get all the vmss instances 
$vmssInstances = Get-AzVmssVM -ResourceGroupName samplerg -VMScaleSetName thulasiscaleset 

#stop the vm instances based on id
Stop-AzVmss -VMScaleSetName thulasiscaleset -ResourceGroupName samplerg -InstanceId 1

#start the vm instances based on id
Start-AzVmss -VMScaleSetName thulasiscaleset -ResourceGroupName samplerg -InstanceId 1
 
#Remove the scaleset
Remove-AzVmss -VMScaleSetName thulasiscaleset -ResourceGroupName samplerg -Force

custom scale properties
min:2, max: 5, default 2

set the scaling out rule to increase instance count by 1 
when cpu threshold crosses 70%  in aggr last 5 machines and 
same for scale in



# to test the configuration

The stress is a tool that enables to generate a workload on the system via command line. 
This allows to configure amount of load on CPU, memory, and I/O.

sudo apt install -y stress
sudo stress --cpu 1000