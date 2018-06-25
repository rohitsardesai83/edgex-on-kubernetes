#!/bin/bash

set -e

EDGEX_ROOT=$(dirname "${BASH_SOURCE}")/..

function create_services {

  kubectl create -f "${EDGEX_ROOT}/services/consul-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/mongo-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/logging-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/notifications-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/metadata-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/data-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/command-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/scheduler-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/export-client-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/export-distro-service.yaml"
  kubectl create -f "${EDGEX_ROOT}/services/rulesengine-service.yaml"
}

function create_deployments {

  kubectl create -f "${EDGEX_ROOT}/deployments/consul-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/mongo-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/logging-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/notifications-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/metadata-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/data-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/command-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/scheduler-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/export-client-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/export-distro-deployment.yaml"
  sleep 10
  kubectl create -f "${EDGEX_ROOT}/deployments/rulesengine-deployment.yaml"
}

echo "Creating EdgeX services now!"
create_services
echo "EdgeX services created successfully !"

echo "Creating EdgeX deployments now!"
create_deployments
echo "EdgeX deployments created successfully!"

