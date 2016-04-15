FROM java:alpine

RUN apk add --update make && rm -rf /var/cache/apk/*

COPY . /usr/src/polymaps
WORKDIR /usr/src/polymaps

CMD make clean && make
