#!/bin/bash

while (( "$#" )); do
        case "$1" in
                -h|--host)
                        if [ -n "$2" ] && [ ${2:0:1} != "-" ]; then
                                HOST=$2
                                shift 2
                        fi
                        ;;
        esac
done

#delete
../build/lib/*plain*

#migration
JAR_PATH=$(find ../build/libs -name "*.jar")
scp -i ~/.ssh/EC2-DEV-PICK-GIT.pem $JAR_PATH ubuntu@$HOST:/home/ubuntu

JAR_NAME=${JAR_PATH##*/}

scp -i ~/.ssh/EC2-DEV-PICK-GIT.pem -m ubuntu@$HOST 'bash -s' < run_script.sh -d prod -j $JAR_NAME


