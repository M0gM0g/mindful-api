#!/bin/bash

curl "http://localhost:4741/entries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVlMTc0NzBkMzhmZWI0OWY2ZjE3ZjEyZDQ1NzE0N2ZiZQY6BkVG--c7429bbb593a82b18efe636738601bf192da0fe1" \
  --data '{
    "entry": {
      "thought": "'"I'm no good at this. I'll never be a programmer"'",
      "distortion": "'"Unrealistic "'",
      "response": "'"I've only been coding for 5 weeks. I need time to grow! "'",
      "date": "'"2018-06-28"'"
    }
  }'

echo
