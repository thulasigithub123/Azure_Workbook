


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