#!/usr/bin/env bash
#
#git remote -v
#git remote add upstream https://github.com/hidevopsio/hioak.git
#git remote -v
#sleep 5
#git fetch upstream
#git rebase upstream/master

echo  "GOOS=linux go build"
  GOOS=linux go build

docker build -t docker.vpclub.cn/hidevopsio/pkg-demo-java-jar:1.1.5 .

docker login -p $(oc whoami -t) -u unused docker-registry-default.app.vpclub.io

docker push docker.vpclub.cn/hidevopsio/pkg-demo-java-jar:1.1.5
