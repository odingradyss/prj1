FROM nodered/node-red:latest
WORKDIR /usr/src/node-red
COPY package.json .
RUN npm install
COPY flows.json .
COPY flows_cred.json .
USER node-red
EXPOSE 1880
CMD ["npm", "start"]
