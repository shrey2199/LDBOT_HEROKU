FROM python:3

WORKDIR /usr/src/app

RUN apt install -y curl \ 
    apt install -y nodejs

RUN npm install -g heroku

RUN curl -O https://raw.githubusercontent.com/shrey2199/LD_Meta_bot/beta/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir

COPY . .

RUN chmod +x start.sh

RUN ./start.sh
