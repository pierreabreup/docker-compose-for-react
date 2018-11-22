FROM node:alpine

ENV REFRESHED_AT "2017-01-16 00:00:00"

RUN apk add --no-cache curl
RUN apk add --no-cache bash

RUN npm install -g yarn

WORKDIR /usr/src/app

EXPOSE 3000

COPY ./entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh
CMD ["/bin/sh"]
ENTRYPOINT ["/etc/entrypoint.sh"]

