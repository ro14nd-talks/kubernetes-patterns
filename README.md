# Kubernetes Patterns

This contains the slides for the presentation "Kubernetes Patterns" which is based on [rhuss/docker-reveal](https://github.com/rhuss/docker-reveal) image.

It includes a HTML5 Terminal emulation which can be used from within the browser (look for slides named "Demo"). The demo can be find below `/demo` where each directory contains its own README.

For the demos to work, the following software is installed:

* Java 8
* Maven 3.3.9
* Docker 1.9.1
* Emacs 25.0.50.1

The image is best started with the include `run.sh` or for some more fanciness, there is also the [shell script](https://raw.githubusercontent.com/rhuss/kubernetes-patterns/master/run-container.sh).

With this startup script the presentation is then available at `http://docker_host:9000` where `docker_host` is the address of your Docker daemon's host (e.g. `localhost` or the IP of your boot2docker VM).

When watching the presentation you can use `m` for getting a Menu for directly navigating to individual slides. There you will also find section **Links** which useful links to additional information.

Have fun (and feel free to open [issues](https://github.com/rhuss/kubernetes-patterns/issues) in case of questions or suggestions).

## Links

* [Slides](kubernetes-patterns.pdf)

### Patterns
* [Writing Software Patterns](http://www.martinfowler.com/articles/writingPatterns.html)
