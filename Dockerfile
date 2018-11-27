FROM docker.vpclub.cn/hidevopsio/centos7:1.0
WORKDIR  ${HOME}/vpclub/
COPY config ${HOME}/vpclub/config
COPY pkg-demo ${HOME}/vpclub/pkg-demo
RUN  chmod +x ${HOME}/vpclub/pkg-demo
ENV MAVEN_MIRROR_URL http://nexus.vpclub.cn/repository/maven-public/
ENV MAVEN_CLEAR_REPO false
ENV DOCKER_API_VERSION 1.24

EXPOSE 7575
EXPOSE 8080

USER 0

CMD ["./pkg-demo"]