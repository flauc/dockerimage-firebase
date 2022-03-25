FROM node:16.14-stretch

RUN echo "deb http://ftp.us.debian.org/debian sid main" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y \
		git \
	&& apt-get clean

RUN npm i -g firebase-tools@10.5.0
