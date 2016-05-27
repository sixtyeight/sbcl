#Introduction

This Docker image provides an [SBCL](http://www.sbcl.org) Common Lisp REPL.

The project sources can be found on [GitHub](https://github.com/g17/sbcl). The Docker image on [Docker Hub](https://registry.hub.docker.com/u/h3nrik/sbcl/).


#Build

	git clone https://github.com/g17/sbcl.git
    docker build -t h3nrik/sbcl .


#Usage

Running the container executes a REPL. It basically invokes the ```sbcl``` binary:

    docker run -it --rm h3nrik/sbcl

