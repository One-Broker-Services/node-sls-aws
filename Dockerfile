FROM node:12

# set the NPM default global user back to root
RUN npm -g config set user root

#install serverless framwerok
RUN npm install -g serverless

#install awscli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws

#add aws cli to path
RUN echo "export PATH=~/bin:$PATH" >> ~/.bashrc
