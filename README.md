oc create -f is-centos-config.yaml
oc create -f is-socat-forwarder-config.yaml
oc create -f build-config.yaml
oc create -f deployment-config.yaml
oc start-build socat-forwarder
oc rollout latest socat-forwarder
