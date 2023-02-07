#!/bin/bash

files=(battling.json others.json catching.json battling.json throwing.json)

for file in "${files[@]}"; do
  echo "[]" > "$file"
done
