IMAGE=skazuki/alpine-node-yarn-install-aws-cli
TAG=22
docker build . -t ${IMAGE}:${TAG}
# docker push ${IMAGE}:${TAG} # not NOT automated build env
