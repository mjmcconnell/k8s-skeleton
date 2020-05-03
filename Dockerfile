FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential python3 vim wget unzip

# Install terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip /usr/local/bin/terraform | 2>&1 > /dev/null

# Install terragrunt
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.13/terragrunt_linux_amd64 /usr/local/bin/terragrunt | 2>&1 > /dev/null
