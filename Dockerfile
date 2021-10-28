FROM node:alpine3.14
RUN apk --no-cache update && \
    apk --no-cache add python3 py3-pip py3-setuptools ca-certificates groff less bash make jq gettext-dev curl wget g++ zip && \
    pip3 --no-cache-dir install aws-shell && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*
RUN apk add --update nodejs
RUN npm install -g serverless aws-sdk
WORKDIR /opt/app
