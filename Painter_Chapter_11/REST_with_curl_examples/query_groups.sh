#!/bin/bash
MY_API_TOKEN="YOUR_PRIVATE_TOKEN"

# Run groups query and save pretty-printed result to result.json file
curl -s --header "PRIVATE-TOKEN: $MY_API_TOKEN" \
     "https://gitlab.com/api/v4/groups" | jq > result.json

# View beginning of result.json file	 
head result.json

# Run some sample jq commands on result.json file
jq ".[].name" result.json
jq ".[].full_path" result.json
jq ".[] | {id,full_path}" result.json
jq ".[] | [.id,.full_path]" result.json
