FROM circleci/golang:1.13

RUN apt-get update && apt-get install -y netcat
RUN curl -O https://releases.hashicorp.com/vault/1.3.0/vault_1.3.0_linux_amd64.zip
RUN apt-get install unzip
RUN unzip vault_1.3.0_linux_amd64.zip
RUN mv vault /usr/local/bin

