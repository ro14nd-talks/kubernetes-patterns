#!/bin/
tag=latest
docker run -d \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -p 9000:9000 -p 57575:57575 -p 35729:35729 \
      rhuss/docker-patterns:${tag} 1>&2

if [ $? -ne "0" ]; then
   echo "Error starting container: $?" 1>&2
   echo "http://cdn.shopify.com/s/files/1/0535/6917/products/problemsdemotivator.jpeg?v=1403276101"
   exit 1
fi

# Let the container warm up
sleep 3

if [ x$DOCKER_HOST = x ]; then
   host="localhost"
else
   echo $DOCKER_HOST | grep -q "^unix";
   if [ $? -ne 0 ]; then
     host=$(echo $DOCKER_HOST | sed -e "s/[^/]*\/\/\([^:/]*\).*/\1/")
   else
     host="localhost"
   fi
fi
echo "http://$host:9000/"
