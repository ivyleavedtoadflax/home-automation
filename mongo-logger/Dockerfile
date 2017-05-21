FROM armhf/ubuntu:16.04

RUN apt-get update -y \
	&& apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install -y \
	git \
	python3\
	python3-pip  

COPY ./pymongopahologger ~/pymongopahologger
WORKDIR "~/pymongopahologger"
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3"]
CMD [ "mongo.py" ]
