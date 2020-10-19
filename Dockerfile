FROM debian:buster-backports

RUN apt update && apt install -y python3 ca-certificates python3-pip apt-transport-https curl gnupg-agent software-properties-common && update-ca-certificates && \
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io git && \
rm -rf /var/cache/apt/archives && rm -rf /var/lib/apt/lists/*
RUN pip3 install docker-compose
