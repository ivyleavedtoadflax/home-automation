FROM armhf/ubuntu:latest

RUN apt update -y \
	&&  apt install -y python-software-properties \
	&&  apt update -y \
	&&  apt install -y mosquitto

EXPOSE 1883

CMD mosquitto
