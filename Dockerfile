FROM node:12

#install serverless framwerok
RUN sudo npm install -g serverless

#install awscli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws

#add aws cli to path
RUN echo "export PATH=~/bin:$PATH" >> ~/.bashrc
