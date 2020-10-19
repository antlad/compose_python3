FROM docker/compose:debian-1.27.4

RUN apt update && apt install -y python3 ca-certificates && update-ca-certificates
