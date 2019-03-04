FROM node:8.11.3-alpine

WORKDIR /app

ENV NODE_ENV development
ENV HOST 0.0.0.0
EXPOSE 8000

RUN apk update && \
    npm install -g @vue/cli

CMD ["yarn", "serve"]