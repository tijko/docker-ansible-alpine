#!/usr/bin/env bash

ANSIBLE=2.9
LINT=5.3.2
MITOGEN=0.2.9

if [[ $# -lt 1 ]]
then
	BUILD_DIRECTORY=$(pwd)
else
	BUILD_DIRECTORY=$1
fi

docker build --build-arg ANSIBLE_VERSION=$ANSIBLE --build-arg ANSIBLE_LINT_VERSION=$LINT --build-arg MITOGEN_VERSION=$MITOGEN $BUILD_DIRECTORY 
