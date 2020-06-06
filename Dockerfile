FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential python3 vim wget unzip

# Install terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip terraform_0.12.24_linux_amd64.zip
RUN mv terraform /usr/local/bin/

# Install terragrunt
RUN wget -O /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.13/terragrunt_linux_amd64

RUN chmod -R 770 /usr/local/bin

WORKDIR /opt/terraform
