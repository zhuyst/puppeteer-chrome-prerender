FROM node:12
  
COPY sources.list /etc/apt/sources.list

RUN apt-get clean && apt-get update && \
    apt-get install -y google-chrome-unstable \
      --no-install-recommends --allow-unauthenticated && \
      rm -rf /var/lib/apt/lists/*

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

RUN npm i puppeteer && rm package-lock.json

CMD ["google-chrome-unstable"]