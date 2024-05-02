#!/bin/bash
MY_API_TOKEN="YOUR_PRIVATE_TOKEN"
MY_PROJECT_ID="YOUR_PROJECT_ID"

curl -s --header "PRIVATE-TOKEN: $MY_API_TOKEN" \
     "https://gitlab.com/api/v4/projects/$MY_PROJECT_ID/deploy_tokens" | jq -M
