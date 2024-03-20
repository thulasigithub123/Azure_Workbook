# project demo

![Automated Build and Multistage Deployment of Next js Frontend](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/601f0056-cbbd-4e86-8090-9f5d73225c72)


# project design
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/16023273-9076-4e48-9148-8775de1f6134)


# initialize a next.js app

![Alt text](image.png)

![Alt text](image-7.png)

![Alt text](image-6.png)


# authenticate to azure account to select the subscription

![Alt text](image-1.png)

# create a azure storage account for terraform backend state management

![Alt text](image-2.png)

and 2 separate container blobs for UAT and PROD state file store

![Alt text](image-3.png)

initialize the terraform and check if the initial state files are stored in remote backend ( azure storage account - container)

![Alt text](image-4.png)

![Alt text](image-5.png)



create a containter registry in azure to store docker images

![Alt text](image-8.png)


mul


![Alt text](image-9.png)


Setup the CI pipeline to checkout the code base and prepare docker build

![Alt text](image-10.png) and pass the artifacts for release


multi stage docker build strategy to build and run the image with reduced size ( light weight )

![Alt text](image-11.png)

![Alt text](image-13.png)


![Alt text](image-12.png)

verify if the new image is tagged and pushed to azure container registry

![Alt text](image-14.png)

create a release pipeline and set the auto-trigger when new image is tagged to acr repository
![Alt text](image-15.png)


![Alt text](image-16.png)

setup the release stages

![Alt text](image-18.png)

 - create UAT and deploy app service
 - verify the webapp status and destroy
 - post deployment approval to promote changes to PROD


![Alt text](image-17.png)

![Alt text](image-19.png)
![Alt text](image-43.png)

verify the changes

commit and test the code locally ( dev server - next.js)
![Alt text](image-21.png)

commit and see the CI pipeline action



![Alt text](image-22.png)

![Alt text](image-23.png)

pipeline is auto-triggered

![Alt text](image-24.png)

![Alt text](image-25.png)

![Alt text](image-26.png)

![Alt text](image-27.png)

and release is started when new image tag is added

![Alt text](image-28.png)

![Alt text](image-29.png)

check if UAT -app service is provisioned by terraform
![Alt text](image-31.png)

![Alt text](image-32.png)
![Alt text](image-30.png)


Verify the UAT app / website and approve it for promotion

![Alt text](image-33.png)

![Alt text](image-34.png)

![Alt text](image-35.png)

![Alt text](image-36.png)

![Alt text](image-37.png)


![Alt text](image-38.png)

![Alt text](image-39.png)

![Alt text](image-40.png)
![Alt text](image-44.png)


![Alt text](image-41.png)

![Alt text](image-42.png)
