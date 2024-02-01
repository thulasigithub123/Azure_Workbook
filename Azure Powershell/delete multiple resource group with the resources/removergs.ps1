
get-azresourcegroup | select Resourcegroupname 
$rgs=@(
    'NetworkWatcherRG',
    'myrg'
)
foreach($rg in $rgs){
    remove-Azresourcegroup -name $rg -force
}

