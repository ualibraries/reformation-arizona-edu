#!/bin/bash

aws s3 sync public/reformation.arizona.edu s3://ualibr-reformation-arizona-edu --delete $1
