#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

source /etc/sysconfig/ovn-kubernetes

function ovn-kubernetes-master() {
  while true; do
  echo "Enable and start ovn-kubernetes master services"
  /usr/bin/ovnkube \
	--cluster-subnet "${cluster_cidr}" \
	--init-master `hostname` \
	--net-controller
  echo "Master Failed - Sleeping"
  sleep 5
  done
}

ovn-kubernetes-master
