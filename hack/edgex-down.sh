#!/bin/bash

#set -e

EDGEX_ROOT=$(dirname "${BASH_SOURCE}")/..

function delete_services {

  kubectl delete -f "${EDGEX_ROOT}/services/consul-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/rulesengine-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/export-distro-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/export-client-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/scheduler-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/command-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/data-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/metadata-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/notifications-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/logging-service.yaml"
  kubectl delete -f "${EDGEX_ROOT}/services/mongo-service.yaml"
}

function delete_deployments {

  kubectl delete -f "${EDGEX_ROOT}/deployments/consul-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/rulesengine-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/export-distro-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/export-client-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/scheduler-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/command-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/data-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/metadata-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/notifications-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/logging-deployment.yaml"
  sleep 10
  kubectl delete -f "${EDGEX_ROOT}/deployments/mongo-deployment.yaml"
  sleep 10
}

echo "Deleting EdgeX deployments now!"
delete_deployments
echo "EdgeX deployments created successfully!"

echo "Deleting EdgeX services now!"
delete_services
echo "EdgeX services deleted successfully !"

