FROM node:12

# set the NPM default global user back to root
RUN npm -g config set user root

#install serverless framwerok
RUN npm install -g serverless

#install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

#install vault
RUN curl https://releases.hashicorp.com/vault/1.7.1/vault_1.7.1_linux_386.zip -o "vault.zip"
RUN unzip vault
RUN mv vault /usr/bin/
RUN vault -v

#install jq
RUN curl -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux32 -o "jq"
RUN mv jq /usr/bin
RUN chmod +x /usr/bin/jq
RUN jq --version