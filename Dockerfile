FROM alpine:3.7

LABEL maintainer="David Galoyan"

ENV PROXY3_VERSION 0.8.11-r0

RUN echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk --update add 3proxy=${PROXY3_VERSION} && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    rm -rf /var/log/*

ADD 3proxy.cfg /etc/3proxy/3proxy.cfg
ADD entrypoint.sh /

EXPOSE 1080 3128

ENTRYPOINT [ "/entrypoint.sh" ]
