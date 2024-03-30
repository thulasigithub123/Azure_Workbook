

setup a azure vm to host a django application
![alt text](image.png)
install django and start creating auth package and fronend app

![alt text](image-1.png)
`pip install django`

`pip install django-azure-auth`


setup a app registration in azure entra id - to leverage Identity service
![alt text](image-2.png)

 - create a secret
 -create authentication - web ( redirect URI )

 ![alt text](image-3.png)
 ![alt text](image-5.png)
 - create token and validation ( firstname, email, upn...)
![alt text](image-6.png)

- setup the brand and org notes

![alt text](image-4.png)


# setup the EntraID user and group level access
![alt text](image-10.png)
![alt text](image-9.png)
 install azure auth module for python and setup middleware level / protected route authentication

![alt text](image-7.png)


![alt text](image-8.png)

start the django server and test the application access with common and admin user

![alt text](image-11.png)

click INfo ( common user access)

![alt text](image-12.png)


click admin link

![alt text](image-13.png)

![alt text](image-14.png)

![alt text](image-15.png)

-unauthorised user
![alt text](image-16.png)


