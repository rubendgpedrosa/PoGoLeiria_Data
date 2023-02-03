#!/bin/bash

# add all files to git
/usr/bin/git add .

# make commit with message as the current date in format YYYY-mm-dd
current_date=$(date +%Y-%m-%d\ %H:%M)
/usr/bin/git commit -m "$current_date"

# push changes to repository
/usr/bin/git push origin main
