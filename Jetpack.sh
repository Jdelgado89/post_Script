#!/bin/bash

echo "What's the Key?"

read key

echo "{"Command":"SignIn","Password":"$key"}" > sign_on.json

echo "{"CurrentPassword":"$key","NewPassword":"G1l4River4dm1n","SecurityQuestion":"NameOfStreet","SecurityAnswer":"Allison"}" > change_admin.json

echo "{"SSID":"GRTI Jetpack","WiFiPassword":"G1l4River3r","WiFiMode":0,"WiFiAuthentication":6,"WiFiEncription":4,"WiFiChannel":0,"MaxConnectedDevice":8,"PrivacySeparator":false,"WMM":true,"Command":"SetWifiSetting"}" > wifi.json


cat sign_on.json
cat change_admin.json
cat wifi.json


sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @sign_on.json http://192.168.1.1/cgi-bin/sign_in.cgi
sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @change_admin.json http://192.168.1.1/cgi-bin/settings_admin_password.cgi
sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @wifi.json http://192.168.1.1/cgi-bin/settings_admin_password.cgi


