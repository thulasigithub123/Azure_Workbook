1. setup a backend endpoint
    configure the environment to run a json-server as endpoint
    in vnet A ( 10.0.0.0/16)
    update the nsg inbound rule to allow accessing http:3001 ( nsg at NIC level)

![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/c9488a52-fcd9-4036-a388-cca9373faf69)
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/41470b22-740e-47cc-8760-93dce177747f)
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/bf87748f-0bef-451a-8ab9-742037fec163)


2. setup a front end vm - to host nginx web application
    import the app files, and point the 
    in vnet B ( 192.168.0.0/16)
    update the nsg inbound rule to allow accessing http:80 ( nsg at NIC level)


![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/565063de-65e5-4c82-841f-4bf6aaad18c7)


3. test the internal connection and verify if they are not connected 
    -as expected ( azure virtual networks are dedicated and separated links, hence by default no interconnection)


4. configure virtual network peering at one end and verify if it is reflected at the other end
( bidirectional) - means, if we do peering at A to B, then it is already done at B to A
 -  virtual network peerings are only if 2 vnets are in Azure 
 - to ip overlapping
 - no self peering

5. once peering is connected, test the PING
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/4aa2571a-1371-49b2-b68b-e1c8007dc935)
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/00d53381-2e90-43ae-9f90-881eb07313ff)


6. update the api endpoint config in frontend by getting both the private IP
 ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/32bbe5cd-4133-4f83-bbc8-254b2bf34cb1)


7. once tested, verify the frontend <-> backend API connectivity -> CRUD operations
   ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/5ec9f570-a1a3-40ac-adce-bd2e3e5d521b)
   ![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/4ef6f555-aadd-4546-b448-20da0e41729e)
![image](https://github.com/thulasigithub123/Azure_Workbook/assets/87015668/7f29eb74-08a3-4d08-93b7-e01fdd5db3a0)

   
