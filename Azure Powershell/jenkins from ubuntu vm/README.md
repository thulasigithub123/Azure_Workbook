First to install
Install-Module -Name Az -Repository PSGallery -Force


to connect:
Connect-AzAccount


To list subscriptions
Get-AzSubscription


To get tenant id
(Get-AzSubscription).TenantId

a tenant can have multiple subscriptions, but a subscription is tied to a single tenant for billing
