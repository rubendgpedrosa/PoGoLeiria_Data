#!/bin/bash

#!/bin/bash

source .env
# Get the current time in seconds since the epoch
current_time=$(date +%s)
firebase_secret=$FIREBASE_SECRET

# Loop through all files in the current directory
for file in *.json; do
  # Get the modification time of the file in seconds since the epoch
  mod_time=$(stat -c %Y "$file")

  # Calculate the difference between the current time and the modification time
  time_diff=$((current_time - mod_time))

  # Check if the difference is less than 300 seconds (5 minutes)
  if [ $time_diff -lt 300 ]; then
    # Read the contents of the file
    file_contents=$(cat $file)
    echo $file_contents
    # Send the contents of the file to Firebase
    curl -X PUT -d "$file_contents" "https://pogoleiria-default-rtdb.europe-west1.firebasedatabase.app/${file%.*}.json?auth=$firebase_secret"
  fi
done

cd /root/PoGoLeiria

# add all files to git
/usr/bin/git add /root/PoGoLeiria/.

# make commit with message as the current date in format YYYY-mm-dd
current_date=$(date +%Y-%m-%d\ %H:%M)
/usr/bin/git commit -m "$current_date"

# push changes to repository
/usr/bin/git push origin main
