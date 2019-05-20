FROM node:10.15.3-stretch

RUN echo "deb http://ftp.us.debian.org/debian sid main" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y \
		git \
	&& apt-get clean

RUN yarn global add firebase-tools@6.10.0
