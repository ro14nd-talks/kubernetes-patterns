
# Patterns

## A Pattern Language

* Late 1960s Christoper Alexander developed a "Pattern concept" for architecture
* Famous book: "A Pattern Language" (1977)
* http://c2.com/cgi/wiki?ChristopherAlexander
* *Each pattern describes a problem which occurs over and over again in our environment, and then describes the core of the solution to that problem, in such a way that you can use this solution a million times over, without ever doing it the same way twice.* (Christopher Alexander)
* C2 Wiki ("the original one") was inspired by his work
* "Pattern Language"
  - Collection of patterns which carry "Names" (e.g. "Factory", "Singleton", ...)
  - Develops a common "language" for enhancing communication
  - Provides solution to common problems for unexperienced developers / architects
* Fixed structure:
  - Name
  - Context
  - Problem
  - Generic Solution

## GoF

* 1994
* Reusable Patterns in Object Oriented Software
* Everybody knows it
* Examples:
  - Singleton
  - Factory
* Fine granular format

## EAI Patterns

* Example for applying patterns
* Graphical Name

## Structure

* Close to "Recipes"

# Configuration

* *Classical* way: Environment variables

# Sidecar

* PODs are the better sidecars (https://github.com/docker/docker/issues/8781)
* Example for sidecars
  - A user-facing web server, and a side-car container that periodically sync's the server's content's
    from version control.
  - A primary database container, and a periodic backup container that copies the database out to network storage.
  - Multiple containers synchronizing work through IPC or shared memory.
  - Side-car containers that provide thick libraries and simplified APIs that other containers can consume
    (e.g. Master   Election)

# Building

* Template System:
  - fish-pepper : https://github.com/fabric8io-images/fish-pepper
  - dogen       : https://github.com/jboss-dockerfiles/dogen
  - crane       : https://github.com/victorlin/crane

## Ansible

  - Demos
    * https://github.com/victorlin/ansible-docker-demo
    * https://opensolitude.com/2015/05/26/building-docker-images-with-ansible.html 
    * http://www.ibm.com/developerworks/cloud/library/cl-provision-docker-containers-ansible/cl-provision-docker-containers-ansible-pdf.pdf
  
* http://victorlin.me/posts/2014/08/11/building-docker-image-with-ansible

## Packer

* https://www.packer.io/docs/builders/docker.html

----

* http://www.martinfowler.com/articles/writingPatterns.html
* "Pattern" vs. "Recipe"
* Pattern capture knowledge, not present original ideas.
* Pattern a described in a formal way, however no "standard"


* Configuration

* Service Discovery
  - DNS
  - Lookup
  - Environment variables (injection)
* Image Building
  - Template Pattern
  - Service vs. Data Container
  - Base Image
* Tool Images
  - DIND
  - Wormhole
