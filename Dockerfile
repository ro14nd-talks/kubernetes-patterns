FROM rhuss/docker-reveal:latest

ARG pdf=kubernetes-patterns.pdf


# ADD m2.tar.bz2 /root/.m2/
ADD slides /slides/
ADD ${pdf} /slides/kubernetes-patterns.pdf
ADD demo /demo/
