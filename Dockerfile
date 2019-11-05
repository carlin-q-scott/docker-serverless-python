FROM node:lts

RUN npm config set prefix /usr/local
RUN npm install -g serverless

CMD [ "serverless", "--help" ]