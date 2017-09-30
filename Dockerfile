FROM centos:7
RUN yum install -y socat
ADD forwarder.sh /forwarder.sh
ENTRYPOINT /forwarder.sh
