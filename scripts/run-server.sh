#!/usr/bin/env bash

PROJECT_ROOT="/home/ubuntu/app"
APP_LOG="$PROJECT_ROOT/application.log"
ERROR_LOG="$PROJECT_ROOT/error.log"
JAR_FILE="$PROJECT_ROOT/github-actions-demo.jar"

# Run the server
cd /home/ubuntu/app || exit

nohup java -jar $JAR_FILE > $APP_LOG 2> $ERROR_LOG &