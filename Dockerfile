FROM node:carbon-alpine as builder
COPY ./nabemono /nabemono
WORKDIR /nabemono
RUN npm install
RUN npm build

FROM node:carbon-alpine
WORKDIR /nabemono
COPY --from=builder /nabemono .
CMD ["npm", "run", "serve"]