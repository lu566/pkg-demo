FROM openshift/base-centos7

WORKDIR /vpcloue

ADD pkg-demo /vpcloue/
ADD config /vpcloue/
RUN chmod +x /vpcloue/pkg-demo

EXPOSE 7575
EXPOSE 8080

CMD ["./pkg-demo"]