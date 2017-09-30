#!/bin/bash

set -e

oc delete is socat-forwarder centos || true
oc delete bc socat-forwarder || true
oc delete dc socat-forwarder || true
oc delete builds --all || true
oc delete service socat-forwarder || true


oc create -f is-centos-config.yaml
oc create -f is-socat-forwarder-config.yaml
oc create -f build-config.yaml
oc create -f deployment-config.yaml
oc create service clusterip socat-forwarder --tcp=8080:8080
oc start-build socat-forwarder
#oc rollout latest socat-forwarder

