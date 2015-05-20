#!/bin/sh
## define required variables
username=admin
password=s1cc0m4r10
baseurl=https://192.168.10.3:8443
site=default

## include the API library
. ./unifi_sh_api

unifi_login
unifi_list_sta
# authorize a client for 30 minutes, limit down/up speed to 2048/1024kbps, quota is 500MB
#unifi_authorize_guest "e8:17:22:10:5d:4d" 30 down=2048 up=1024 bytes=500 
# generate 10 voucher(s) valid for 60 minutes, limit down/up speed to 2048/1024kbps, quota is 500MB
#unifi_create_voucher 60 10 down=2048 up=1024 bytes=500
# this returns you a token that you can call by using unifi_get_vouchers()
unifi_logout
