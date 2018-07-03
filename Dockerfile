FROM node:carbon as builder
COPY ./nabemono /nabemono
WORKDIR /nabemono
RUN npm install
RUN npm run build

FROM node:carbon
WORKDIR /nabemono
COPY --from=builder /nabemono .
CMD ["npm", "run", "serve"]