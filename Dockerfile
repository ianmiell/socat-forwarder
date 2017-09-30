FROM centos:7
RUN yum install -y socat
ADD forwarder.sh /forwarder.sh
CMD /forwarder.sh
