FROM openjdk:alpine

RUN apk add --no-cache ttf-dejavu &&\
    wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# users' dependencies
RUN apk add --no-cache\ 
	git \
	zip \
	python \
	python3 \
	make \
	curl \
	tar \
	openssh-client \
	docker \
	bash

VOLUME ["/root/.jenkins"]
EXPOSE 8080

ENTRYPOINT java -jar jenkins.war
