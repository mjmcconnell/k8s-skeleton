FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential terraform vim wget

RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.4/terragrunt_linux_amd64
RUN mv terragrunt_linux_amd64 terragrunt
RUN chmod +x terragrunt
RUN mv terragrunt /usr/local/bin
