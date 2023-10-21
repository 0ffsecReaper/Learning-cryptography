#!/bin/bash
echo "Welcome to base64 encoding/decoding tool."
read -p "Enter 'E' to encode or 'D' to decode: " choice
read -p "Enter the input: " input
if [ "$choice" == "E" ]; then
  encoded=$(echo -n "$input" | base64)
  echo "Encoded string: $encoded"
elif [ "$choice" == "D" ]; then
  decoded=$(echo -n "$input" | base64 -d)
  echo "Decoded string: $decoded"
else
  echo "Invalid choice!"
fi

