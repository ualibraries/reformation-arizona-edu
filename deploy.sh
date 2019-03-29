#!/bin/bash

aws s3 sync public s3://reformation.library.arizona.edu --delete $1
