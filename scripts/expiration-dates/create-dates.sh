#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/expiration_dates"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "expiration_date": {
      "date": "'"${DATE}"'",
      "item_name": "'"${ITEM_NAME}"'",
      "Category": "'"${CATEGORY}"'"
    }
  }'

echo
