#!/bin/bash
echo "Allowed bucket test:"
aws s3 ls s3://logbucketforpractice

echo "Unauthorized bucket test:"
aws s3 ls s3://unauthorized-bucket

