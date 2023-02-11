#!/bin/bash

files=(/root/PoGoLeiria/battling.json /root/PoGoLeiria/others.json /root/PoGoLeiria/catching.json /root/PoGoLeiria/battling.json /root/PoGoLeiria/throwing.json)

for file in "${files[@]}"; do
  echo "[{}]" > "$file"
done
