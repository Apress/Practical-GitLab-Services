if [ -n "$CI_JOB_TOKEN" ]; then
    export REPO_TOKEN_NAME="Job-Token"
    export REPO_TOKEN_VALUE="$CI_JOB_TOKEN"
elif [ -n "$GITLAB_DEPLOY_TOKEN" ]; then
    export REPO_TOKEN_NAME="Deploy-Token"
    export REPO_TOKEN_VALUE="$GITLAB_DEPLOY_TOKEN"
else
    export REPO_TOKEN_NAME="None"
    export REPO_TOKEN_VALUE="None"
fi
