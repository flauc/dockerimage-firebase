FROM node:12.14.1-stretch

RUN echo "deb http://ftp.us.debian.org/debian sid main" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y \
		git \
	&& apt-get clean

RUN npm i -g firebase-tools@7.11.0
