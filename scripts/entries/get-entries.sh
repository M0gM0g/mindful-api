#!/bin/bash

curl "http://localhost:4741/entires" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
