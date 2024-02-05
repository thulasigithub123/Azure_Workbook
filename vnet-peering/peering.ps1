 Get-AzVirtualNetwork           

# ResourceGroupName Name                Location     ProvisioningState EnableDdosProtection
# ----------------- ----                --------     ----------------- --------------------
# samplerg1         backendmachine-vnet eastus       Succeeded         False
# samplerg2         frontendvm-vnet     centralindia Succeeded         False

# Get the commands related to peering
get-command -noun *peering -Module Az.Network

# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Add-AzExpressRouteCrossConnectionPeering           7.3.0      Az.Network
# Cmdlet          Add-AzVirtualNetworkPeering                        7.3.0      Az.Network
# Cmdlet          Get-AzExpressRouteCrossConnectionPeering           7.3.0      Az.Network
# Cmdlet          Get-AzVirtualNetworkPeering                        7.3.0      Az.Network
# Cmdlet          Remove-AzExpressRouteCrossConnectionPeering        7.3.0      Az.Network
# Cmdlet          Remove-AzVirtualNetworkPeering                     7.3.0      Az.Network
# Cmdlet          Set-AzVirtualNetworkPeering                        7.3.0      Az.Network
# Cmdlet          Sync-AzVirtualNetworkPeering                       7.3.0      Az.Network


$vnet1=Get-AzVirtualNetwork | Where-Object { $_.name -like "backend*"}                                

$vnet2=Get-AzVirtualNetwork | Where-Object { $_.name -like "front*"}                                  

Add-AzVirtualNetworkPeering -Name 2to1 -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id


# ResourceGroupName Name VirtualNetworkName AllowVirtualNetworkAccess AllowForwardedTraffic AllowGatewayTransit UseRemoteGateways ProvisioningState
# ----------------- ---- ------------------ ------------------------- --------------------- ------------------- ----------------- -----------------
# samplerg2         2to1 frontendvm-vnet    True                      False                 False               False             Succeeded


To remove 
Remove-AzVirtualNetworkPeering -name 2to1 -ResourceGroupName samplerg1 -VirtualNetworkName backendmachine-vnet