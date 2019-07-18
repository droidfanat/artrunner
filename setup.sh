#!/bin/bash
if [[ $ENV_TAG == *null* ]]; then
    echo gitlab-runner register -n --name $ENV_NAME --executor docker --docker-image docker:latest --docker-volumes /var/run/docker.sock:/var/run/docker.sock --url $ENV_URL --registration-token $ENV_TOCKEN 
    gitlab-runner register -n --name $ENV_NAME --executor docker --docker-image docker:latest --docker-volumes /var/run/docker.sock:/var/run/docker.sock --url $ENV_URL --registration-token $ENV_TOCKEN   
else
    echo gitlab-runner register -n --name $ENV_NAME --executor docker --docker-image docker:latest --docker-volumes /var/run/docker.sock:/var/run/docker.sock --url $ENV_URL --registration-token $ENV_TOCKEN --tag-list $ENV_TAG 
    gitlab-runner register -n --name $ENV_NAME --executor docker --docker-image docker:latest --docker-volumes /var/run/docker.sock:/var/run/docker.sock --url $ENV_URL --registration-token $ENV_TOCKEN --tag-list $ENV_TAG  
   fi
chown 1000:1000 /etc/gitlab-runner/config.toml