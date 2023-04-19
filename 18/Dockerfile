FROM node:18

USER root

#install serverless framework
RUN npm install -g serverless @sentry/cli

#install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip && unzip awscliv2.zip &&./aws/install

#install vault
RUN curl "https://releases.hashicorp.com/vault/1.13.1/vault_1.13.1_linux_386.zip" -o "vault.zip" && unzip vault.zip && mv vault /usr/bin/

#install jq
RUN curl -L "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux32" -o "jq" && mv jq /usr/bin && chmod +x /usr/bin/jq
