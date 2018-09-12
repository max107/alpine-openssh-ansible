all: build push

build:
	docker build -t max107/alpine-openssh-ansible .

push:
	docker push max107/alpine-openssh-ansible
