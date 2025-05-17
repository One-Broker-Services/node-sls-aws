FROM node:22

USER root

#install serverless framework
RUN npm install -g osls @sentry/cli

#install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip && unzip awscliv2.zip && ./aws/install

#install vault
RUN curl "https://releases.hashicorp.com/vault/1.16.2/vault_1.16.2_linux_amd64.zip" -o "vault.zip" && unzip vault.zip && mv vault /usr/bin/

#install jq
RUN curl -L "https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-linux-amd64" -o "jq" && mv jq /usr/bin && chmod +x /usr/bin/jq
