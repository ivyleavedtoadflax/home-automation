FROM armhf/ubuntu:16.04

RUN apt-get update -y \
	&& apt-get install -y python-software-properties
RUN apt-get update -y \
	&& apt-get install -y mosquitto

RUN mkdir /ca

COPY ./mosquitto/etc/mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY ./mosquitto/etc/passwd /etc/mosquitto/passwd
COPY ./mosquitto/etc/bridge.conf /etc/mosquitto/bridge.conf 

EXPOSE 8883

CMD mosquitto -c /etc/mosquitto/mosquitto.conf
