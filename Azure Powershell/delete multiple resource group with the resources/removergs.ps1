
get-azresourcegroup | select Resourcegroupname 
$rgs=@(
    'NetworkWatcherRG',
    'myrg'
)
foreach($rg in $rgs){
    remove-Azresourcegroup -name $rg -force
}


#-------------all resource groups-------------

$rgs=get-azresourcegroup | select Resourcegroupname 
$rgs
foreach($rg in $rgs){
    remove-Azresourcegroup -name $rg.Resourcegroupname -force
}
