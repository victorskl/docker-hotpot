FROM node:carbon as builder
COPY ./hotpot /hotpot
COPY ./secrets.json.sample /etc/hotpot/secrets.json
WORKDIR /hotpot
RUN npm install
RUN npm run build

FROM node:carbon
WORKDIR /hotpot
COPY --from=builder /hotpot .
CMD ["npm", "run", "serve"]