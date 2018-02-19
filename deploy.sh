#!/bin/bash

aws s3 sync public s3://ualibr-reformation-arizona-edu --delete $1
