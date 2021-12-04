FROM amazonlinux

# install yum packages
RUN curl --silent --location https://rpm.nodesource.com/setup_16.x | bash -
RUN yum install -y zip python3-pip python3-setuptools nodejs
RUN rm -rf /var/cache/yum

# install serverless
RUN npm config set prefix /usr/local
RUN npm install -g serverless@2.68

WORKDIR /src
CMD [ "serverless", "--help" ]