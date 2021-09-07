#!/bin/bash

cat << _EOF_
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./* ./
ENTRYPOINT ["nginx", "-g", "daemon off;"]
_EOF_
