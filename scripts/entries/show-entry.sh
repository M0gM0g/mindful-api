#!/bin/bash

curl "http://localhost:4741/entries/2" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiU1ODg4NDQ5MGIwM2VlYWU4MjcxMzNhOTBkYzE0MTYxZQY6BkVG--3a1bbadfd187c53de6271a13534de231e663185a"

echo
