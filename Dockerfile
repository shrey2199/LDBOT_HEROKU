FROM ubuntu:20

WORKDIR /usr/src/app

RUN apt update -y && \    
    apt install -y curl && \ 
    apt install -y git && \
    apt install -y gnupg && \
    apt install -y nodejs

RUN npm install -g heroku

RUN curl -O https://raw.githubusercontent.com/shrey2199/LD_Meta_bot/beta/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir

COPY . .

RUN chmod +x start.sh

RUN ./start.sh