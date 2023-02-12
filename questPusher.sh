#!/bin/bash

source .env

# Check if there are any changes to be committed
if git diff-index --quiet HEAD; then
  # There are no changes, do nothing
  echo "No changes to commit"
else
  # There are changes, perform the curl command
  for file in *.json; do
    # Read the contents of the file
    file_contents=$(cat $file)
    firebase_secret=$FIREBASE_SECRET
    # Send the contents of the file to Firebase
    curl -X PUT -d "$file_contents" "https://pogoleiria-default-rtdb.europe-west1.firebasedatabase.app/${file%.*}.json?auth=$firebase_secret"
  done

  # Add all changes to Git
  cd /root/PoGoLeiria

  # add all files to git
  /usr/bin/git add /root/PoGoLeiria/.

  # make commit with message as the current date in format YYYY-mm-dd
  current_date=$(date +%Y-%m-%d\ %H:%M)
  /usr/bin/git commit -m "$current_date"

  # push changes to repository
  /usr/bin/git push origin main
fi
