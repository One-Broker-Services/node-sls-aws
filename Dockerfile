FROM node:12

RUN npm install -g serverless
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN echo "export PATH=~/bin:$PATH" >> ~/.bashrc
