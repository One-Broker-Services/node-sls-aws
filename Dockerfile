FROM node:12

# set the NPM default global user back to root
RUN npm -g config set user root

#install serverless framwerok
RUN npm install -g serverless

#install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install