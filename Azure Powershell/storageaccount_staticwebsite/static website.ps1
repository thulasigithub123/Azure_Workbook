$resourcegroup_name="samplerg"
$storageaccount_name="tempstoragethulasi"
$location="centralindia"

New-Azresourcegroup -name $resourcegroup_name -location $location -force
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourcegroup_name -AccountName $storageaccount_name -SkuName Standard_LRS -Location $location -AllowBlobPublicAccess 1 

Enable-AzStorageStaticWebsite -Context $storageAccount.Context -IndexDocument index.html

#to upload the file to azure blob/container storage
$indexDocument = "~/Desktop/index.html"
set-AzStorageblobcontent -Container `$web -File ~/Desktop/index.html -Context $storageAccount.Context -Properties @{ ContentType="text/html; charset=utf-8"; }


#to access the website
$storageAccount.PrimaryEndpoints.Web

#remove the whole storage account
 Remove-AzStorageAccount -ResourceGroupName $resourcegroup_name -Name $storageaccount_name -Force