FROM armhf/ubuntu:16.04

RUN apt-get update -y \
	&& apt-get install -y python-software-properties
RUN apt-get update -y \
	&& apt-get install -y mosquitto

COPY ./mosquitto/etc/mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY ./mosquitto/etc/passwd /etc/mosquitto/passwd

EXPOSE 1883

CMD mosquitto
