IMAGE=skazuki/alpine-node-yarn-install-aws-cli
TAG=14
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env