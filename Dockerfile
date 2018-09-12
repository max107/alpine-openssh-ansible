FROM alpine:3.8
RUN apk update && apk add --no-cache openssh-client bash rsync py-pip libffi-dev python python-dev build-base openssl-dev
RUN pip install --upgrade pip cffi && pip install ansible==2.6
RUN rm -rf /var/cache/apk/*
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
