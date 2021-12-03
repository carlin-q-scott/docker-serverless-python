FROM node:lts

RUN npm config set prefix /usr/local
RUN npm install -g serverless@2.68

CMD [ "serverless", "--help" ]