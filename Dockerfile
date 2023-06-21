FROM debian:bookworm-slim

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  bash \
  curl \
  sudo \
  webp && \
  apt-get upgrade -y 

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
    sudo apt install -y nodejs

COPY . .

RUN npm install

CMD ["sudo","bash","loop.sh"]
