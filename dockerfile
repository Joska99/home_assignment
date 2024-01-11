# Stage 1
FROM node:alpine3.18 as builder

WORKDIR /app

COPY ./node_js_app/ /app/

RUN npm install


# Stage 2
FROM node:alpine3.18

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 8000

CMD [ "node", "app.js" ]

