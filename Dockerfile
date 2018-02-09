FROM node:8

WORKDIR /home/node
RUN git clone https://github.com/mheap/trello-cli.git \
  && cd trello-cli \
  && npm install -g

COPY ./env2creds /usr/local/bin/env2creds

CMD ["trello"]
