#!/bin/bash
MY_API_TOKEN="YOUR_PRIVATE_TOKEN"
MY_PROJECT_ID="YOUR_PROJECT_ID"

curl --request POST --header "PRIVATE-TOKEN: $MY_API_TOKEN" --header "Content-Type: application/json" \
     --data '{"name": "my-read-token", "expires_at": "2025-01-01", "scopes": ["read_registry", "read_package_registry"]}' \
     "https://gitlab.com/api/v4/projects/$MY_PROJECT_ID/deploy_tokens/"
