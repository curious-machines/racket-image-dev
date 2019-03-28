#
# thelonious/racket
#

ARG BASE_VERSION=0.0.1

FROM thelonious/ubuntu:${BASE_VERSION}

# switch to root for installs
USER root

# install packages
RUN apt-get install -y --no-install-recommends \
	libedit2 \
	emacs \
	racket

# switch to default user
USER ubuntu
