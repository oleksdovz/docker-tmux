# syntax=docker/dockerfile:1
FROM alpine

MAINTAINER oleksdovzh@gmail.com
LABEL maintainer="oleksdovzh@gmail.com"

ARG TARGETARCH
USER root
RUN apk add --no-cache wget curl openssh-client tmux git

# CMD tmux new -s init
CMD ["sh", "-c", "echo 'Script runs command-> tail -f /dev/null';tail -f /dev/null"]