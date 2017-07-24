#!/bin/sh
tag=$(git rev-parse --abbrev-ref HEAD)
if [ ${tag} = "master" ]; then
  tag="latest"
fi
echo "Building rhuss/kubernetes-patterns:${tag}"
docker build --build-arg pdf=$(ls kubernetes*.pdf) -t rhuss/kubernetes-patterns:${tag} .
sed -i.bak "s/^tag=.*$/tag=${tag}/" run-container.sh
rm run-container.sh.bak
