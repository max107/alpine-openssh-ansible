FROM python:3-alpine
RUN apk update && \
    apk add --no-cache openssh-client bash rsync libffi-dev build-base openssl-dev

RUN pip3 install --upgrade cffi ansible

RUN rm -rf /var/cache/apk/*

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
