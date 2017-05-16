FROM armhf/ubuntu:16.04

RUN apt-get update -y \
	&& apt-get install -y python-software-properties \
	&& apt-get install -y mosquitto

EXPOSE 1883

CMD mosquitto
