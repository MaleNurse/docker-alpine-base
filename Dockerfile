FROM alpine
LABEL maintainer="Zach McDonough @MaleNurse"

RUN apk update
RUN apk upgrade
RUN apk add bash bash-completion curl sudo su-exec wget git gcc dbus cmake util-linux mandoc python3 vim nano
RUN python3 -m ensurepip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

COPY .bashrc /root/.bashrc
WORKDIR /root

ENTRYPOINT [ "/bin/bash"]
