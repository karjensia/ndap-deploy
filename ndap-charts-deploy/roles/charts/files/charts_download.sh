#!/bin/bash

usage() {
  echo "usage: $0 <git branch or tag>"
  exit 0
}

if [ ! -n "$1" ]; then
    usage
fi

GIT_BRANCH=$1  

echo "Downloading k8s-charts NDAP"
git clone -b $GIT_BRANCH git@github.com:nexr/k8s-charts.git /tmp/k8s-charts
echo "Download Successed"
