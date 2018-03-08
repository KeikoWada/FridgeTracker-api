#!/bin/bash

curl "http://localhost:4741/expiration_dates/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "expiration_date": {
      "date": "'"${DATE}"'",
      "item_name": "'"${ITEM_NAME}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'

echo
