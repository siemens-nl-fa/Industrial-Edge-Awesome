#!/bin/bash

##Fill in these vars
export IEM_NAME="FILL IN"
export IEM_URL="FILL IN"
export IEM_USER="FILL IN"
export IEM_PASSWORD="FILL IN"
export EDGE_SKIP_TLS=1




./iectl config add iem --name "$IEM_NAME" --url "$IEM_URL" --user $IEM_USER--password "$IEM_PASSWORD"  


# 1 loop through apps

## variable app list

# 2 loop trough devices

## variable device list 
device_array=$(./iectl iem device list --size 1000| \python3 ./python/getDeviceIdFromIEM.py)
IFS=',' read -ra devices <<< "$device_array"

# Iterate device array
for deviceId in "${devices[@]}"; do
  #edits
  deviceId=${deviceId%%+([[:space:]])}  
  deviceId=${deviceId##+([[:space:]])}
  deviceId="${deviceId#?}"
  deviceId=$(echo "$deviceId" | sed 's/[]]//g') 
  deviceId=$(echo "$deviceId" | tr -d "'")    

  # echo "DevId: $deviceId" 
 

  application_array=$(./iectl iem device list-apps --deviceid $deviceId| \python3 ./python/getAppIdFromIED.py)
  

  IFS=", " read -r -a items <<< "$application_array"

  #itarate over applications
  for applicationId in "${items[@]}"; do
    #edits
    applicationId=${applicationId%%+([[:space:]])}  
    applicationId=${applicationId##+([[:space:]])}
    applicationId="${applicationId#?}"
    applicationId=$(echo "$applicationId" | sed 's/[]]//g') 
    applicationId=$(echo "$applicationId" | tr -d "'")  

    echo "   Updating AppId:  $applicationId"
    
    ./iectl iem job batch-create --appid $applicationId --operation "installApplication" --infoMap  "{"devices":["$deviceId"]}"

  done
  echo "###########"  
  echo "DEVICE DONE"
  echo "###########"
  # echo $(./iectl iem device list-apps --deviceid $deviceId)

done

echo "FINISH"