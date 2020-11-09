#!/bin/sh
cat /home/ec2-user/output.txt
aws s3 cp /home/ec2-user/output.txt s3://datapumpmem/output/
