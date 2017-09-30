oc create is socat-fowarder
oc create -f build-config.yaml
oc start-build socat-forwarder
oc rollout latest socat-forwarder
