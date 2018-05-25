FROM rhuss/docker-reveal:1.4.0

ARG pdf=kubernetes-patterns.pdf


# ADD m2.tar.bz2 /root/.m2/
ADD slides /slides/
WORKDIR /slides
#RUN rm -rf node_modules \
# && npm install
ADD ${pdf} /slides/kubernetes-patterns.pdf
ADD demo /demo/
