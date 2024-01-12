# Stage 1
FROM node:alpine3.18 as builder

WORKDIR /app

COPY ./node_js_app/ /app/

RUN npm install 


# Stage 2
FROM node:alpine3.18

WORKDIR /home/node/app

# User for securit
USER node

COPY --from=builder /app /home/node//app

EXPOSE 8000

CMD [ "node", "app.js" ]

