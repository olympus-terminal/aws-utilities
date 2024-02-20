#!/bin/bash

aws s3 ls >> bucketlist.tmp
cut -d ' ' -f 3 bucketlist.tmp >> bucketnames.tmp
cat bucketnames.tmp | while read l; do aws s3 rm --recursive s3://$l ; done 
