#!/bin/bash

# Set Service Principal Credentials
client_id="XXXX"
client_secret="XXX"
tenant_id="XXXX"
subscription_id="XXXX"

# Log in using Service Principal
az login --service-principal -u "$client_id" -p "$client_secret" --tenant "$tenant_id"

# Set the default subscription
#az account set --subscription "$subscription_id"

