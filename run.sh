#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Arguments are incorrect!"
    echo "Usage: $0 env_name component_name"
fi

env_name=$1
component_name=$2
config_location=${env_name}/${component_name}

source ${config_location}/env_vars
envsubst < template.sql > ${config_location}/generated.sql

logfile=${config_location}/output.log
echo _____________________________________ >> ${logfile}
date >> ${logfile}
psql pre_jenkins_test -U dumbo -f ${config_location}/generated.sql -e >>  ${logfile}