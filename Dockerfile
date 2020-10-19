FROM debian:buster-backports

RUN apt update && apt install -y python3 ca-certificates && update-ca-certificates
RUN pip3 install docker-compose
