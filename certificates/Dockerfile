FROM armhf/ubuntu:16.04

RUN apt-get update && \
    apt-get install openssl -y

RUN mkdir ca && mkdir ca_mount

RUN openssl req \
  -new \
  -x509 \
  -days 3650 \
  -extensions v3_ca \
  -passout pass:password \
  -subj "/C=UK/ST=London/L=London/CN=Home Automation" \
  -keyout /ca/ca.key.pem \
  -out /ca/ca.crt.pem

RUN openssl genrsa \
      -out /ca/mqtt.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=mqtt.local" \
      -out /ca/mqtt.local.csr.pem \
      -key /ca/mqtt.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/mqtt.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/mqtt.local.crt.pem \
      -days 365

RUN openssl genrsa \
      -out /ca/mqtt-bridge.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=mqtt-bridge.local" \
      -out /ca/mqtt-bridge.local.csr.pem \
      -key /ca/mqtt-bridge.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/mqtt-bridge.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/mqtt-bridge.local.crt.pem \
      -days 365

RUN openssl genrsa \
      -out /ca/mqtt-client.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=mqtt-client.local" \
      -out /ca/mqtt-client.local.csr.pem \
      -key /ca/mqtt-client.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/mqtt-client.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/mqtt-client.local.crt.pem \
      -days 365

RUN openssl genrsa \
      -out /ca/sonoff.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=sonoff.local" \
      -out /ca/sonoff.local.csr.pem \
      -key /ca/sonoff.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/sonoff.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/sonoff.local.crt.pem \
      -days 365

RUN openssl genrsa \
      -out /ca/sonoff1.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=sonoff.local" \
      -out /ca/sonoff1.local.csr.pem \
      -key /ca/sonoff1.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/sonoff1.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/sonoff1.local.crt.pem \
      -days 365

RUN openssl genrsa \
      -out /ca/matthew-XPS13-9333.local.key.pem 2048 && \
    openssl req \
      -new \
      -subj "/C=UK/ST=London/L=London/CN=matthew-XPS13-9333.local" \
      -out /ca/matthew-XPS13-9333.local.csr.pem \
      -key /ca/matthew-XPS13-9333.local.key.pem && \
    openssl x509 \
      -req \ 
      -passin pass:password \
      -in /ca/matthew-XPS13-9333.local.csr.pem \
      -CA /ca/ca.crt.pem \
      -CAkey /ca/ca.key.pem \
      -CAcreateserial \
      -out /ca/matthew-XPS13-9333.local.crt.pem \
      -days 365
