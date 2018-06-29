#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"m@mm"'",
      "password": "'"m"'",
      "password_confirmation": "'"m"'"
    }
  }'

echo
