#!/bin/bash

curl "http://localhost:4741/expiration_dates/" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
