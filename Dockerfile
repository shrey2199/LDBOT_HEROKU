FROM ubuntu:18.04

WORKDIR /usr/src/app

RUN apt update -y && \    
    apt install -y curl && \ 
    apt install -y git && \
    apt install -y gnupg

RUN curl -O https://raw.githubusercontent.com/shrey2199/LD_Meta_bot/beta/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir

COPY . .

RUN chmod +x start.sh

RUN ./start.sh
