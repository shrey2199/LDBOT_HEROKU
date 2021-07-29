FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python3.9 && \
    apt-get install -y --no-install-recommends python3.9-dev && \
    apt-get install -y --no-install-recommends python3-pip && \
    apt-get install -y curl && \
    apt-get install -y git && \
    apt-get install -y gnupg
    
COPY . .

RUN chmod +x start.sh
