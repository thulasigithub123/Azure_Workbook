1. setup a backend endpoint
    configure the environment to run a json-server as endpoint
    in vnet A ( 10.0.0.0/16)
    update the nsg inbound rule to allow accessing http:3001 ( nsg at NIC level)


2. setup a front end vm - to host nginx web application
    import the app files, and point the 
    in vnet B ( 192.168.0.0/16)
    update the nsg inbound rule to allow accessing http:80 ( nsg at NIC level)


3. test the internal connection and verify if they are not connected 
    -as expected ( azure virtual networks are dedicated and separated links, hence by default no interconnection)


4. configure virtual network peering at one end and verify if it is reflected at the other end
( bidirectional) - means, if we do peering at A to B, then it is already done at B to A
## virtual network peerings are only if 2 vnets are in Azure 
## to ip overlapping
## no self peering


5. once peering is connected, test the PING

6. once tested, verify the frontend <-> backend API connectivity -> CRUD operations