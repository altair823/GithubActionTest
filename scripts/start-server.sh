#!/usr/bin/env bash

sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080
sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 8080

PROJECT_ROOT="/home/ubuntu/app"
APP_LOG="$PROJECT_ROOT/application.log"
ERROR_LOG="$PROJECT_ROOT/error.log"
JAR_FILE="$PROJECT_ROOT/github-actions-demo.jar"

# Run the server
cd /home/ubuntu/app || exit

nohup java -jar $JAR_FILE > $APP_LOG 2> $ERROR_LOG &