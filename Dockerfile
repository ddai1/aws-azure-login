FROM node:17-slim

ARG PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

COPY package.json yarn.lock /aws-azure-login/

RUN cd /aws-azure-login \
   && yarn install --production

COPY lib /aws-azure-login/lib

ENTRYPOINT ["node", "/aws-azure-login/lib", "--no-sandbox"]
