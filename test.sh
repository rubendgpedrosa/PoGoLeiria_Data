# Get the modification time of the file in seconds since the epoch
mod_time=$(stat -c %Y "others.json")

# Get the current time in seconds since the epoch
current_time=$(date +%s)

# Calculate the difference between the current time and the modification time
time_diff=$((current_time - mod_time))

# Check if the difference is less than 300 seconds (5 minutes)
if [ $time_diff -lt 300 ]; then
  # Read the contents of the file
  echo "CHANGED"
fi
