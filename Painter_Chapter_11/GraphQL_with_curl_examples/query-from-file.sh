#!/bin/bash
MY_API_TOKEN="YOUR_PRIVATE_TOKEN"

# Replace YOUR_GROUP_PATH with name of group that you own
curl -s "https://gitlab.com/api/graphql" \
    --header "PRIVATE-TOKEN: $MY_API_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data "@group-query.json" | jq -M
