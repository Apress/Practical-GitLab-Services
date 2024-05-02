#!/bin/bash
MY_API_TOKEN="YOUR_PRIVATE_TOKEN"

curl -s "https://gitlab.com/api/graphql" \
     --header "Authorization: Bearer $MY_API_TOKEN" \
     --header "Content-Type: application/json" \
     --request POST \
     --data "{\"query\": \"query {currentUser {name}}\"}" | jq -M
