#!/bin/bash

# delete file raw_quests
rm raw_quests

# add all files to git
git add .

# make commit with message as the current date in format YYYY-mm-dd
current_date=$(date +%Y-%m-%d\ %H:%M)
git commit -m "$current_date"

# push changes to repository
git push origin main