#!/bin/bash

curl "http://localhost:4741/entries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU1ODg4NDQ5MGIwM2VlYWU4MjcxMzNhOTBkYzE0MTYxZQY6BkVG--3a1bbadfd187c53de6271a13534de231e663185a" \
  --data '{
    "entry": {
      "thought": "'"Im no good at this. Ill never be a programmer"'",
      "distortion": "'"Unrealistic "'",
      "response": "'"Ive only been coding for 5 weeks. I need time to grow! "'",
      "date": "'"2018-06-28"'"
    }
  }'

echo
