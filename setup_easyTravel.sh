#!/bin/bash

sed -i.bak "s/config.apmTenant=21bee77c-3225-40d5-870f-4f8af4429879/config.apmTenant=/" /home/ubuntu/easyTravel/easytravel-2.0.0-x64/resources/easyTravelConfig.properties
sed -i.bak "s/config.apmServerHost=mou612.managed-sprint.dynalabs.io/config.apmServerHost=/" /home/ubuntu/easyTravel/easytravel-2.0.0-x64/resources/easyTravelConfig.properties
sed -i.bak "s/config.openKitMobileLoadGenerator=false/config.openKitMobileLoadGenerator=true/" /home/ubuntu/easyTravel/easytravel-2.0.0-x64/resources/easyTravelConfig.properties
sed -i.bak "s;config.mobileBeaconUrl=;config.mobileBeaconUrl=https://mou612.dynatrace-managed.com:8443/mbeacon/tenID;" /home/ubuntu/easyTravel/easytravel-2.0.0-x64/resources/easyTravelConfig.properties
sed -i.bak "s/config.etMobileAppId=/config.etMobileAppId=752c288d-5973-4c79-b7d1-3a49d4d42ea0/" /home/ubuntu/easyTravel/easytravel-2.0.0-x64/resources/easyTravelConfig.properties
su -c 'nohup /home/ubuntu/easyTravel/easytravel-2.0.0-x64/runEasyTravelNoGUI.sh --startgroup UEM --startscenario "Standard with REST Service and Angular2 frontend" &' - ubuntu

