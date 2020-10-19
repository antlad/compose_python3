FROM debian:buster-backports

RUN apt update && apt install -y python3 ca-certificates python3-pip && update-ca-certificates
RUN pip3 install docker-compose
