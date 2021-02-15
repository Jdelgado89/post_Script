#!/bin/bash

echo "What's the Key?"

read key

echo "{"Command":"SignIn","Password":"$key"}" > sign_on.json

echo "{"CurrentPassword":"$key","NewPassword":"G1l4River4dm1n","SecurityQuestion":"NameOfStreet","SecurityAnswer":"Allison"}" > change_>

echo "{"SSID":"GRTI Jetpack","WiFiPassword":"G1l4River3r","WiFiMode":0,"WiFiAuthentication":6,"WiFiEncription":4,"WiFiChannel":0,"MaxCo>


cat sign_on.json
cat change_admin.json
cat wifi.json


sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @sign_on.json http://192.168.>
sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @change_admin.json http://192>
sleep 5
curl -X POST -H "Cookie: jetpack=6af5e293139d989bdcfd66257b4f5327" -H "Content-Type: application/json" -d @wifi.json http://192.168.1.1>


