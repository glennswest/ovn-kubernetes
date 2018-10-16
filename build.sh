docker build -f Dockerfile.centos -t ovn-daemonset .
docker tag  ovn-daemonset docker.io/glennswest/ovn-daemonset:latest
docker push docker.io/glennswest/ovn-daemonset:latest

