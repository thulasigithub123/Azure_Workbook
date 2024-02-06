
![azdevops acr (1)](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/6c6a7e6c-e5da-476f-b0b5-7dd84baa5ca3)

project outline

![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/dde5fb95-967b-4d86-b68f-4221b188c18a)



1. create ACR - azure container registry
2. create azure app service - webapp with deployment stots ( stagging, production )
    web app of container - linux ( env )



azure to Devops connection
1. setup service connection for acr
2. setup service connection for azure resource manager to access webapp instances
3. prepare a selfhosted agent ( with personl access token)


checkout the azure repos with the application code and dockerfile to containerize
create a build pipeline
add task - build and push image to acr repository
tag the build artifacts

create release with 2 stages
1 - to stagging app deployment
2 - swap with production after approvals


Build pipeline (docker build and push image to azure container registry ) 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/13ba61d4-3156-4c2d-a97b-f13586e26c66)

Release setup 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/1a6a5c1e-a31c-44a7-9af9-e1328f219421)

 
 
Initial stage 
. ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/7a342a61-b6da-4ff0-9d3c-d2aa23b44148)

 
Setting up the release pipeline with swap options and with post deployment approvals 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/5b764119-08e4-4749-bfcb-af47bd6f4d6b)

 
Verify the stagging slot webapp and approve so to promote it to PROD 
https://myfrontendthulasi-stagging.azurewebsites.net/ 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/71d2f68c-c8e6-445e-80cb-bbd051853149)

 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/bc1b4de3-6d3f-4d98-a3d1-354b1df6289b)

 
Monitor the production swap 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/e134559e-75de-4393-8918-48b26661eba8)

 
https://myfrontendthulasi.azurewebsites.net/ ( production ) 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/2384760c-0567-4022-b07e-d5dc914dda9b)

Verify if the ACR – Repository images are tracked after the build process 
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/589a9b72-c779-4ddb-af36-71eee0f2ef01)

