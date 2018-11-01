#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

source /etc/sysconfig/ovn-kubernetes

function ovn-kubernetes-node() {

  while true; do
  echo "Enable and start ovn-kubernetes node services"
  /usr/bin/ovnkube \
	--cluster-subnet "${cluster_cidr}" \
	--init-node `hostname`
 echo "ovn-kubernetes-node failed - sleeping"
 sleep 5
 done
}

ovn-kubernetes-node
