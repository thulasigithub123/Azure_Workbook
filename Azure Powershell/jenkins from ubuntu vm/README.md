### PowerShell Script for Azure Virtual Machine Provisioning and Jenkins Installation

![Azure Powershell](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/af48c6cc-cc7b-4589-a131-f06150198228)



 - First to install
Install-Module -Name Az -Repository PSGallery -Force


 - to connect:
`Connect-AzAccount`


 - To list subscriptions
`Get-AzSubscription`


 - To get tenant id
`(Get-AzSubscription).TenantId`

a tenant can have multiple subscriptions, but a subscription is tied to a single tenant for billing

script:

![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/e5ab88ec-6709-4850-9748-6d3de280f3e6)

run and check the azure resources
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/8703cd04-6758-4c1e-b905-2be003cde825)

Verify the jenkins service

![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/1b441d47-19b8-421d-a4a5-a550f45951c0)

![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/b94a61bf-e3d4-4046-8b90-4e3db19c2bc7)

