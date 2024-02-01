Azure App Service (PAAS) is a fully managed platform for building, deploying, and scaling web apps.
 It supports multiple programming languages, frameworks, and platforms, allowing developers to build applications using their preferred tools and technologies. 
 
 .net, node, python, java, php

 public method as  ( code, docker container, static webapp from remote repos)

 App Service includes several services under its umbrella, 
 such as Web Apps, Mobile Apps, API Apps, and Function Apps.

$webappname="mywebapp"
$rgname="samplerg1"
$location="eastus" 

#To create a webapp
 new-azwebapp -resourcegroup $rgname -Name $webappname -Location $location -AppServicePlan 

 #To list the status of all webapps ( running or stopped)
 Get-AzWebApp | Select-Object -Property hostnames,name,enabled, type,kind,ResourceGroup,State | ft


$webapps=@(
    'mywebappthulasi',
    'mywebappthulasi2',
    'mywebappthulasi3'

)

#stop multiple webapps simultaneously

foreach($webapp in $webapps){
    start-AzWebApp -ResourceGroupName samplerg -name $webapp 
    }

#start multiple webapps simultaneously

foreach($webapp in $webapps){
    start-AzWebApp -ResourceGroupName samplerg -name $webapp 
    }

#remove multiple webapps simultaneously

foreach($webapp in $webapps){
    Remove-AzWebApp -ResourceGroupName samplerg -name $webapp 
    }

