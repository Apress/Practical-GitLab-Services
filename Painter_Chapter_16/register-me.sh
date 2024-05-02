#!/bin/bash
# The register-config.toml file contains the initial config.toml settings generated by gitlab-runner register.register-me.sh
# If the file does not exist, the gitlab-runner will register with the GitLab server and create the register-config.toml file.
# If the file does exist, this script skips the registration process.
# In either case, the script returns all settings with the word token in it.
#
# Update the following variables with values appropriate to your runner setup.
GITLAB_URL=poc.jpgitlab.com
RUNNER_TOKEN="glrt-REDACTED"
RUNNER_NAME="aws-autoscaler-1b"

if [ ! -f /etc/gitlab-runner/register-config.toml ]; then
 gitlab-runner register \
 --non-interactive \
 --config /etc/gitlab-runner/register-config.toml \
 --url "https://$GITLAB_URL" \
 --token "$RUNNER_TOKEN" \
 --executor "docker+machine" \
 --docker-image alpine:latest \
 --name "$RUNNER_NAME" \
 &> /etc/gitlab-runner/register-me.log
fi
grep "token" /etc/gitlab-runner/register-config.toml