#!/bin/bash

curl "http://localhost:4741/expiration_dates/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
