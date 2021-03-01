FROM alpine
LABEL maintainer="Zach McDonough @MaleNurse"

RUN apk update
RUN apk upgrade
RUN apk add bash bash-completion curl sudo su-exec wget git gcc dbus cmake util-linux mandoc python3 vim nano alpine-sdk ca-certificates
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk
RUN apk add glibc-2.33-r0.apk
RUN python3 -m ensurepip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

COPY .bashrc /root/.bashrc
WORKDIR /root

ENTRYPOINT [ "/bin/bash"]
