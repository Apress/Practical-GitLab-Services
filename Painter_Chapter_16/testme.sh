#!/bin/bash
docker-machine create -d amazonec2 \
 --amazonec2-iam-instance-profile GitLabRunnerManagerRole \
 --amazonec2-region us-east-1 \
 --amazonec2-vpc-id vpc-REPLACEME \
 --amazonec2-subnet-id subnet-REPLACEME \
 --amazonec2-zone b \
 --amazonec2-private-address-only \
 --amazonec2-security-group gitlab-runner-sec-group \
 --amazonec2-instance-type “t2.micro” \
 --amazonec2-keypair-name runner \
 --amazonec2-ssh-keypath /etc/gitlab-runner/runner \
 --amazonec2-tags “runner-manager-name,gitlab-aws-autoscaler,gitlab,true,gitlab-runner-autoscale,true” \
 runner-test
