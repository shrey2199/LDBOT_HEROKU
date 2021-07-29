FROM ubuntu:18.04

WORKDIR /usr/src/app

RUN apt update -y && \    
    apt install -y curl && \ 
    apt install -y git && \
    apt install -y gnupg

COPY . .

RUN chmod +x start.sh

RUN ./start.sh
