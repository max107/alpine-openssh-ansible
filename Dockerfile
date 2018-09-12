FROM alpine:3.6
RUN apk update && apk add --no-cache openssh-client bash rsync ansible
RUN rm -rf /var/cache/apk/*
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
