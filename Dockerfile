FROM alpine:3.2
MAINTAINER Henrik Sachse <t3x7m3@posteo.de>
ENV SBCL_VERSION=1.3.5
RUN apk update && apk upgrade && apk add curl make
RUN mkdir /sbcl \
    && curl -sL https://sourceforge.net/projects/sbcl/files/sbcl/${SBCL_VERSION}/sbcl-${SBCL_VERSION}-x86-64-linux-binary.tar.bz2 \
    | bzip2 -d \
    | tar -xf - -C / \
    && cd /sbcl-${SBCL_VERSION}-x86-64-linux \
    && INSTALL_ROOT=/sbcl ./install.sh \
    && rm -rf /sbcl-${SBCL_VERSION}-x86-64-linux
ENV SBCL_HOME=/sbcl/lib/sbcl
ENTRYPOINT ["/sbcl/bin/sbcl"]
