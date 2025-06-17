#!/bin/bash
yum install -y awscli
LOG_FILE="/tmp/hello.log"
echo "Log created at $(date)" >> $LOG_FILE
aws s3 cp $LOG_FILE s3://logbucketforpractice/hello.log

