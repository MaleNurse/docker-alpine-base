FROM alpine
LABEL maintainer="Zach McDonough @MaleNurse"

RUN apk update
RUN apk upgrade
RUN apk add bash bash-completion curl sudo su-exec wget git gcc dbus cmake util-linux mandoc python3 vim nano
RUN python3 -m ensurepip
RUN cd /usr/bin
RUN ln -s python3 python
RUN ln -s pip3 pip

COPY .bashrc /root/.bashrc
WORKDIR /root

ENTRYPOINT [ "/bin/bash", "-c"]
